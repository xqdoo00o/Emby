define(["connectionManager","loading","globalize","dom","require","formHelper","emby-checkbox","emby-select","emby-input","emby-button"],function(connectionManager,loading,globalize,dom,require,formHelper){"use strict";function loadPage(page,config,codecs,defaultCodecConfigurations){var selectHwa=page.querySelector("#selectHwa");selectHwa.value=config.HardwareAccelerationMode||0;var codecConfigs=1===config.HardwareAccelerationMode?defaultCodecConfigurations:config.CodecConfigurations||[];!function(context,codecs,codecConfigs){if(null==codecs||0===codecs.length)return;!function(codecs,codecConfigs){for(var i=0,length=codecs.length;i<length;i++){var codec=codecs[i],config=getConfigurationByCodecId(codecConfigs,codec.Id);config&&config.Priority?codec.Priority=config.Priority:codec.Priority=0}}(codecs,codecConfigs);var decoderHtml=renderCodecsGrouped(0,0,codecs.filter(function(codec){return"Decoder"===codec.Direction&&codec.IsHardwareCodec})),encoderHtml=renderCodecsGrouped(0,0,codecs.filter(function(codec){return"Encoder"===codec.Direction&&codec.IsHardwareCodec}));context.querySelector("#hardwareDecoders").innerHTML=decoderHtml,context.querySelector("#hardwareEncoders").innerHTML=encoderHtml}(page,codecs,codecConfigs);Array.prototype.forEach.call(page.querySelectorAll(".chkEnableCodec"),function(c){var codecId=c.getAttribute("data-codec"),config=getConfigurationByCodecId(codecConfigs,codecId);c.checked=config&&config.IsEnabled}),page.querySelector("#chkEnableThrottle").checked=config.EnableThrottling,page.querySelector("#selectThreadCount").value=config.EncodingThreadCount,page.querySelector("#txtDownMixAudioBoost").value=config.DownMixAudioBoost,page.querySelector("#txtTranscodingTempPath").value=config.TranscodingTempPath||"",page.querySelector("#selectH264Preset").value=config.H264Preset||"",page.querySelector("#txtH264Crf").value=config.H264Crf||"0",page.querySelector("#chkEnableSubtitleExtraction").checked=config.EnableSubtitleExtraction||!1;var selectToneMapping=page.querySelector(".selectToneMapping");config.EnableHardwareToneMapping&&config.EnableSoftwareToneMapping?selectToneMapping.value="both":config.EnableHardwareToneMapping?selectToneMapping.value="hw":config.EnableSoftwareToneMapping?selectToneMapping.value="swforced":selectToneMapping.value="",onSelectToneMappingEnabledChanged.call(selectToneMapping),onHwaModeChange.call(selectHwa),loading.hide(),function(page){page.querySelector("#hardwareDecoders").addEventListener("click",onCodecClick),page.querySelector("#hardwareEncoders").addEventListener("click",onCodecClick)}(page)}function renderCodecsGrouped(context,codecConfigs,codecs){return codecs.map(function(item){return item.MediaTypeName}).filter(distinct).map(function(group){var groupCodecs=codecs.filter(function(codec){return codec.MediaTypeName===group});return function(group,codecs){codecs.sort(function(c1,c2){return c2.Priority-c1.Priority});var html='<div><h3 class="checkboxListLabel">'+group+"</h3>";return html+='<div class="checkboxList codecList">',html+=codecs.map(renderSingleCodec).join(""),html+="</div></div>"}(group,groupCodecs)}).join("")}function renderSingleCodec(codec,index,codecs){var checkBoxHtml='<label class="listItemCheckboxContainer">';checkBoxHtml+='<input type="checkbox" is="emby-checkbox" class="chkEnableCodec"  data-codec="'+codec.Id+'" />',checkBoxHtml+="<span>"+codec.Name+"</span></label>";var upDownHtml="";0<index?upDownHtml+='<button type="button" is="paper-icon-button-light" title="'+globalize.translate("ButtonUp")+'" aria-label="'+globalize.translate("ButtonUp")+'" class="listItemButton btnSortableMoveUp btnSortable" data-pluginindex="'+codec.Id+'"><i class="md-icon">keyboard_arrow_up</i></button>':1<codecs.length&&(upDownHtml+='<button type="button" is="paper-icon-button-light" title="'+globalize.translate("ButtonDown")+'" aria-label="'+globalize.translate("ButtonDown")+'" class="listItemButton btnSortableMoveDown btnSortable" data-pluginindex="'+codec.Id+'"><i class="md-icon">keyboard_arrow_down</i></button>');var fullHtml='<div class="listItem '+(index<codecs.length-1?" listItem-border ":"")+' sortableOption">';return fullHtml+=checkBoxHtml,fullHtml+='<div class="listItemBody two-line listItemBodyText"></div>',fullHtml+="",fullHtml+=upDownHtml,fullHtml+="</div>"}function onSubmit(e){var form=this;loading.show();var apiClient=ApiClient;return apiClient.getNamedConfiguration("encoding").then(function(config){config.DownMixAudioBoost=form.querySelector("#txtDownMixAudioBoost").value,config.TranscodingTempPath=form.querySelector("#txtTranscodingTempPath").value,config.EncodingThreadCount=form.querySelector("#selectThreadCount").value,config.H264Preset=form.querySelector("#selectH264Preset").value,config.H264Crf=parseInt(form.querySelector("#txtH264Crf").value||"0"),config.EnableSubtitleExtraction=form.querySelector("#chkEnableSubtitleExtraction").checked,config.EnableThrottling=form.querySelector("#chkEnableThrottle").checked;var selectHwa=form.querySelector("#selectHwa");config.HardwareAccelerationMode=parseInt(selectHwa.value);var selectToneMappingValue=form.querySelector(".selectToneMapping").value;"both"===selectToneMappingValue?(config.EnableHardwareToneMapping=!0,config.EnableSoftwareToneMapping=!0):"hw"===selectToneMappingValue?(config.EnableHardwareToneMapping=!0,config.EnableSoftwareToneMapping=!1):"swforced"===selectToneMappingValue?(config.EnableHardwareToneMapping=!1,config.EnableSoftwareToneMapping=!0):(config.EnableHardwareToneMapping=!1,config.EnableSoftwareToneMapping=!1);var codecConfigs=[];2===config.HardwareAccelerationMode&&Array.prototype.forEach.call(form.querySelectorAll(".chkEnableCodec"),function(c){var priority=c.checked?100-function(checkBox){var li=checkBox.closest(".sortableOption"),index=0;for(;li=li.previousElementSibling;)index++;return index}(c):0,codecConfig={CodecId:c.getAttribute("data-codec"),Priority:priority,IsEnabled:c.checked};codecConfigs.push(codecConfig)}),config.HardwareAccelerationType=null,config.CodecConfigurations=codecConfigs,apiClient.updateNamedConfiguration("encoding",config).then(function(response){loading.hide(),formHelper.handleConfigurationSavedResponse(response)})}),e.preventDefault(),e.stopPropagation(),!1}function getConfigurationByCodecId(codecConfigs,codecId){if(!codecId||null==codecConfigs||0===codecConfigs.length)return null;for(var i=0;i<codecConfigs.length;i++)if(codecConfigs[i]&&codecConfigs[i].CodecId&&codecConfigs[i].CodecId===codecId)return codecConfigs[i];return null}function distinct(value,index,self){return self.indexOf(value)===index}function onCodecClick(e){var li,list,next,prev,btnSortable=e.target.closest(".btnSortable");btnSortable&&(list=(li=btnSortable.closest(".sortableOption")).closest(".codecList"),btnSortable.classList.contains("btnSortableMoveDown")?(next=li.nextElementSibling)&&(li.parentNode.removeChild(li),next.parentNode.insertBefore(li,next.nextElementSibling)):(prev=li.previousElementSibling)&&(li.parentNode.removeChild(li),prev.parentNode.insertBefore(li,prev)),Array.prototype.forEach.call(list.querySelectorAll(".sortableOption"),adjustSortableListElement))}function adjustSortableListElement(elem){var btnSortable=elem.querySelector(".btnSortable");elem.previousElementSibling?(btnSortable.classList.add("btnSortableMoveUp"),btnSortable.classList.remove("btnSortableMoveDown"),btnSortable.querySelector("i").innerHTML="keyboard_arrow_up"):(btnSortable.classList.remove("btnSortableMoveUp"),btnSortable.classList.add("btnSortableMoveDown"),btnSortable.querySelector("i").innerHTML="keyboard_arrow_down"),elem.nextElementSibling?elem.classList.add("listItem-border"):elem.classList.remove("listItem-border")}function onHwaModeChange(e){for(var advancedSections=this.closest(".page").querySelectorAll(".hwaAdvanced"),mode=this.value,i=0,length=advancedSections.length;i<length;i++)"2"===mode?advancedSections[i].classList.remove("hide"):advancedSections[i].classList.add("hide")}function onSelectToneMappingEnabledChanged(e){var descriptionText,selectContainer=this.closest(".selectContainer"),value=this.value;"both"===value?descriptionText=globalize.translate("ToneMappingInBothDescription"):"hw"===value?descriptionText=globalize.translate("ToneMappingInHardwareDescription"):"swforced"===value&&(descriptionText=globalize.translate("ToneMappingInSoftwareDescription"));var descriptionElement=selectContainer.querySelector(".toneMappingDescription");descriptionElement.innerHTML=descriptionText||"",descriptionText?descriptionElement.classList.remove("hide"):descriptionElement.classList.add("hide")}function onMediaEncodingInitializaed(page,apiClient,toneMapOptions){loading.show();var configPromise=apiClient.getNamedConfiguration("encoding"),codecInfoPromise=apiClient.getVideoCodecInformation().catch(function(){return[]}),codecConfigDefaults=apiClient.getJSON(apiClient.getUrl("Encoding/CodecConfiguration/Defaults")).catch(function(){return[]});!function(page,toneMapOptions){var innerHTML;toneMapOptions.OptionsVisibility.IsSoftwareToneMappingAvailable||toneMapOptions.OptionsVisibility.IsAnyHardwareToneMappingAvailable?(innerHTML="",innerHTML+='<option value="">'+globalize.translate("No")+"</option>",toneMapOptions.OptionsVisibility.IsAnyHardwareToneMappingAvailable?(innerHTML+='<option value="hw">'+globalize.translate("WithHardwareAcceleratedTranscoding")+"</option>",innerHTML+='<option value="both">'+globalize.translate("WithEitherHardwareOrSoftwareTranscoding")+"</option>"):innerHTML+='<option value="both">'+globalize.translate("Yes")+"</option>",page.querySelector(".selectToneMapping").innerHTML=innerHTML,page.querySelector(".fldToneMapping").classList.remove("hide")):page.querySelector(".fldToneMapping").classList.add("hide")}(page,toneMapOptions),Promise.all([configPromise,codecInfoPromise,codecConfigDefaults]).then(function(responses){loadPage(page,responses[0],responses[1],responses[2])})}function checkMediaEncodingInitialization(page,apiClient){loading.show(),apiClient.getToneMapOptions().then(function(toneMapOptions){page.querySelector(".encodingSettingsForm").classList.remove("hide"),page.querySelector(".encodingNotInitializedMessage").classList.add("hide"),onMediaEncodingInitializaed(page,apiClient,toneMapOptions)},function(errorResponse){page.querySelector(".encodingSettingsForm").classList.add("hide"),page.querySelector(".encodingNotInitializedMessage").classList.remove("hide"),503===errorResponse.status?function(page,apiClient){setTimeout(function(){checkMediaEncodingInitialization(page,apiClient)},1e3)}(page,apiClient):loading.hide()})}return function(view,params){var apiClient=connectionManager.currentApiClient();view.querySelector("#selectHwa").addEventListener("change",onHwaModeChange),view.querySelector(".hwaGuideLink").innerHTML=globalize.translate("SeeOurHwaGuide",'<a is="emby-linkbutton" href="https://support.emby.media/support/solutions/articles/44001160148-hardware-acceleration-overview" class="button-link" target="_blank">',"</a>"),view.querySelector("#btnSelectTranscodingTempPath").addEventListener("click",function(){require(["directorybrowser"],function(directoryBrowser){var picker=new directoryBrowser;picker.show({callback:function(path){path&&(view.querySelector("#txtTranscodingTempPath").value=path),picker.close()},validateWriteable:!0,header:globalize.translate("HeaderSelectTranscodingPath"),instruction:globalize.translate("HeaderSelectTranscodingPathHelp")})})}),view.querySelector(".encodingSettingsForm").addEventListener("submit",onSubmit),apiClient.getSystemInfo().then(function(systemInfo){for(var hwaPremiereInfo=view.querySelectorAll(".hwaPremiereInfo"),i=0,length=hwaPremiereInfo.length;i<length;i++)systemInfo.HardwareAccelerationRequiresPremiere?hwaPremiereInfo[i].classList.remove("hide"):hwaPremiereInfo[i].classList.add("hide"),hwaPremiereInfo[i].innerHTML=globalize.translate("FeatureRequiresEmbyPremiere",'<a href="https://emby.media/premiere" data-preset="premiereinfo" is="emby-linkbutton" type="button" class="button-link btnHwaPremiere">',"</a>")}),view.querySelector(".selectToneMapping").addEventListener("change",onSelectToneMappingEnabledChanged),view.addEventListener("viewshow",function(){checkMediaEncodingInitialization(this,apiClient)})}});