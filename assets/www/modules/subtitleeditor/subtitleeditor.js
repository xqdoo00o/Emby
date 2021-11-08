define(["dialogHelper","require","layoutManager","globalize","userSettings","connectionManager","loading","focusManager","dom","apphost","emby-select","listViewStyle","paper-icon-button-light","formDialogStyle","material-icons","emby-button","flexStyles","emby-scroller"],function(dialogHelper,require,layoutManager,globalize,userSettings,connectionManager,loading,focusManager,dom,appHost){"use strict";var currentItem,currentMediaSource,hasChanges,currentOptions,newStreamIndex;function showRemoteSubtitles(context,id){loading.show();var apiClient=connectionManager.getApiClient(currentItem);apiClient.get(apiClient.getUrl("Providers/Subtitles/Subtitles/"+id)).then(function(result){alertText({preFormattedText:dom.stripScripts(result),confirmButton:!1,title:globalize.translate("Subtitles")}),loading.hide()})}function alertText(options){require(["alert"]).then(function(responses){responses[0](options)})}function downloadRemoteSubtitles(context,id){loading.show(),require(["toast"],function(toast){toast(globalize.translate("DownloadingDots"))});var apiClient=connectionManager.getApiClient(currentItem);apiClient.ajax({type:"POST",url:apiClient.getUrl("Items/"+currentItem.Id+"/RemoteSearch/Subtitles/"+id,{MediaSourceId:currentMediaSource.Id}),dataType:"json"}).then(function(result){loading.hide(),hasChanges=!0,result&&(newStreamIndex=result.NewIndex),currentOptions.closeOnDownload?dialogHelper.close(context):reload(context,apiClient,currentItem.Id,currentMediaSource.Id)},function(){loading.hide(),alertText(globalize.translate("DefaultErrorMessage"))})}function searchForSubtitles(context,language){userSettings.set("subtitleeditor-language",language),loading.show();var apiClient=connectionManager.getApiClient(currentItem),url=apiClient.getUrl("Items/"+currentItem.Id+"/RemoteSearch/Subtitles/"+language,{IsForced:context.querySelector("#chkForcedOnly").checked||null,MediaSourceId:currentMediaSource.Id});apiClient.getJSON(url).then(function(results){!function(context,results){var html="";if(!results.length)return context.querySelector(".noSearchResults").classList.remove("hide"),context.querySelector(".subtitleResults").innerHTML="",loading.hide();context.querySelector(".noSearchResults").classList.add("hide");for(var i=0,length=results.length;i<length;i++){var result=results[i],tagName=layoutManager.tv?"button":"div",className=layoutManager.tv?"listItem listItem-border btnOptions":"listItem listItem-border";layoutManager.tv&&(className+=" listItem-focusscale listItem-button"),html+="<"+tagName+' class="'+className+'" data-subid="'+result.Id+'">',html+='<div class="listItemBody">',html+='<div class="listItemBodyText">'+result.Name+"</div>",html+='<div class="listItemBodyText-secondary listItemBodyText">',html+=result.ProviderName,html+="</div>",html+='<div class="listItemBodyText-secondary listItemBodyText flex align-items-center">',result.IsForced&&(html+='<div class="inline-flex align-items-center justify-content-center" style="margin-right:1em;"><i class="md-icon" style="margin-right:.25em;font-size:1.6em;">language</i>'+globalize.translate("Forced")+"</div>"),result.IsHashMatch&&(html+='<div class="inline-flex align-items-center justify-content-center" style="margin-right:1em;"><i class="md-icon" style="margin-right:.25em;font-size:1.6em;">storage</i>'+globalize.translate("HashMatch")+"</div>"),null!=result.DownloadCount&&(html+='<span style="margin-right:1em;">'+globalize.translate("DownloadsValue",result.DownloadCount)+"</span>"),html+="</div>",result.Comment&&(html+='<div class="listItemBodyText-secondary listItemBodyText">'+result.Comment+"</div>"),html+="</div>",layoutManager.tv||(html+='<button type="button" is="paper-icon-button-light" data-subid="'+result.Id+'" class="btnDownload listItemButton" title="'+globalize.translate("Download")+'" aria-label="'+globalize.translate("Download")+'"><i class="md-icon">&#xf090;</i></button>',html+='<button type="button" is="paper-icon-button-light" data-subid="'+result.Id+'" class="btnPreview listItemButton" title="'+globalize.translate("Preview")+'" aria-label="'+globalize.translate("Download")+'"><i class="md-icon">open_in_new</i></button>'),html+="</"+tagName+">"}context.querySelector(".subtitleResults").innerHTML=html,loading.hide()}(context,results)})}function onGetItem(context,item,mediaSource,apiClient,autoSearch){currentItem=item,currentMediaSource=mediaSource,apiClient.getCurrentUser().then(function(user){user.Policy.EnableSubtitleDownloading||null==user.Policy.EnableSubtitleDownloading&&user.Policy.IsAdministrator?context.querySelector(".subtitleSearchContainer").classList.remove("hide"):context.querySelector(".subtitleSearchContainer").classList.add("hide"),function(context,mediaSource,user){var subs=(mediaSource.MediaStreams||[]).filter(function(s){return"Subtitle"===s.Type}),html="";!1!==currentOptions.showCurrentSubtitles&&(html+=subs.map(function(s){var itemHtml="",tagName=layoutManager.tv?"button":"div",className=layoutManager.tv&&s.Path?"listItem listItem-border btnDelete":"listItem listItem-border";return layoutManager.tv&&(className+=" listItem-focusscale listItem-button"),itemHtml+="<"+tagName+' class="'+className+'" data-index="'+s.Index+'">',itemHtml+='<i class="listItemIcon md-icon listItemIcon-transparent">&#xE01c;</i>',itemHtml+='<div class="listItemBody two-line">',itemHtml+='<div class="listItemBodyText">',itemHtml+=s.DisplayTitle||"",itemHtml+="</div>",(s.Path||s.Title)&&(itemHtml+='<div class="listItemBodyText-secondary listItemBodyText">'+(s.Path||s.Title)+"</div>"),itemHtml+="</a>",itemHtml+="</div>",(user.Policy.EnableSubtitleManagement||null==user.Policy.EnableSubtitleManagement&&user.Policy.IsAdministrator)&&(layoutManager.tv||s.Path&&(itemHtml+='<button is="paper-icon-button-light" data-index="'+s.Index+'" title="'+globalize.translate("Delete")+'" aria-label="'+globalize.translate("Delete")+'" class="btnDelete listItemButton"><i class="md-icon">&#xE872;</i></button>')),itemHtml+="</"+tagName+">"}).join(""));var elem=context.querySelector(".subtitleList");subs.length?elem.classList.remove("hide"):elem.classList.add("hide"),elem.innerHTML=html}(context,mediaSource,user);var file=currentMediaSource.Path||"",index=Math.max(file.lastIndexOf("/"),file.lastIndexOf("\\"));-1<index&&(file=file.substring(index+1)),file?(context.querySelector(".originalFile").innerHTML=file,context.querySelector(".originalFile").classList.remove("hide")):(context.querySelector(".originalFile").innerHTML="",context.querySelector(".originalFile").classList.add("hide")),loading.hide(),focusManager.autoFocus(context),autoSearch&&setTimeout(function(){context.querySelector(".subtitleSearchForm").requestSubmit(context.querySelector(".btnSubmit"))},300)})}function reload(context,apiClient,itemId,mediaSource,autoSearch){context.querySelector(".noSearchResults").classList.add("hide"),"string"==typeof itemId?apiClient.getItem(apiClient.getCurrentUserId(),itemId).then(function(item){for(var mediaSourceId=mediaSource,i=0,length=item.MediaSources.length;i<length;i++)if(mediaSourceId===item.MediaSources[i].Id){mediaSource=item.MediaSources[i];break}mediaSource=mediaSource||item.MediaSources[0],onGetItem(context,item,mediaSource,apiClient,autoSearch)}):onGetItem(context,itemId,mediaSource,apiClient,autoSearch)}function onSearchSubmit(e){var lang=this.querySelector("#selectLanguage",this).value;return searchForSubtitles(this.closest(".formDialogContent"),lang),e.preventDefault(),!1}function onSubtitleListClick(e){var index,btnDelete=e.target.closest(".btnDelete");btnDelete&&(index=btnDelete.getAttribute("data-index"),function(context,index){var msg=globalize.translate("MessageAreYouSureDeleteSubtitles");require(["confirm"],function(confirm){confirm({title:globalize.translate("ConfirmDeletion"),text:msg,confirmText:globalize.translate("Delete"),primary:"cancel"}).then(function(){loading.show();var itemId=currentItem.Id,mediaSourceId=currentMediaSource.Id,url="Videos/"+itemId+"/Subtitles/"+index,apiClient=connectionManager.getApiClient(currentItem);apiClient.ajax({type:"DELETE",url:apiClient.getUrl(url,{MediaSourceId:mediaSourceId})}).then(function(){hasChanges=!0,reload(context,apiClient,itemId,mediaSourceId)})})})}(btnDelete.closest(".subtitleEditorDialog"),index))}function onSubtitleResultsClick(e){var subtitleId,context,btnOptions=e.target.closest(".btnOptions");if(btnOptions)return subtitleId=btnOptions.getAttribute("data-subid"),context=btnOptions.closest(".subtitleEditorDialog"),void function(button,context,subtitleId){var items=[];items.push({name:globalize.translate("Download"),id:"download",icon:"download"}),items.push({name:globalize.translate("Preview"),id:"preview",icon:"open_in_new"}),require(["actionsheet"],function(actionsheet){actionsheet.show({items:items,positionTo:button}).then(function(id){switch(id){case"download":downloadRemoteSubtitles(context,subtitleId);break;case"preview":showRemoteSubtitles(0,subtitleId)}})})}(btnOptions,context,subtitleId);var btnDownload=e.target.closest(".btnDownload");if(btnDownload)return subtitleId=btnDownload.getAttribute("data-subid"),void downloadRemoteSubtitles(context=btnDownload.closest(".subtitleEditorDialog"),subtitleId);var btnPreview=e.target.closest(".btnPreview");return btnPreview?(subtitleId=btnPreview.getAttribute("data-subid"),context=btnPreview.closest(".subtitleEditorDialog"),void showRemoteSubtitles(0,subtitleId)):void 0}function showEditorInternal(options,template){hasChanges=!1,newStreamIndex=null;var item=(currentOptions=options).item,mediaSource=options.mediaSource,apiClient=connectionManager.getApiClient(item),dialogOptions={removeOnClose:!0,scrollY:!1,autoFocus:!1};layoutManager.tv?dialogOptions.size="fullscreen":dialogOptions.size="medium-tall";var dlg=dialogHelper.createDialog(dialogOptions);dlg.classList.add("formDialog"),dlg.classList.add("subtitleEditorDialog"),dlg.innerHTML=globalize.translateDocument(template,"sharedcomponents"),dlg.querySelector(".subtitleSearchForm").addEventListener("submit",onSearchSubmit);var editorContent=dlg.querySelector(".formDialogContent");return dlg.querySelector(".subtitleList").addEventListener("click",onSubtitleListClick),dlg.querySelector(".subtitleResults").addEventListener("click",onSubtitleResultsClick),apiClient.getCultures().then(function(languages){!function(context,apiClient,languages){var selectLanguage=context.querySelector("#selectLanguage");selectLanguage.innerHTML=languages.map(function(l){return'<option value="'+l.ThreeLetterISOLanguageName+'">'+l.DisplayName+"</option>"});var lastLanguage=userSettings.get("subtitleeditor-language");lastLanguage?selectLanguage.value=lastLanguage:apiClient.getCurrentUser().then(function(user){var lang=user.Configuration.SubtitleLanguagePreference;lang&&(selectLanguage.value=lang)})}(editorContent,apiClient,languages)}),dlg.querySelector(".btnCancel").addEventListener("click",function(){dialogHelper.close(dlg)}),appHost.supports("externallinks")?dlg.querySelector(".noSearchResults").innerHTML=globalize.translate("NoSubtitleSearchResultsFound",'<a is="emby-linkbutton" href="https://support.emby.media/support/solutions/articles/44001848856-manual-subtitle-downloads" target="_blank" class="button-link">',"</a>"):dlg.querySelector(".noSearchResults").innerHTML=globalize.translate("NoSubtitleSearchResultsFound","",""),new Promise(function(resolve,reject){dlg.addEventListener("close",function(){hasChanges?resolve({NewIndex:newStreamIndex}):reject()}),dialogHelper.open(dlg),reload(editorContent,apiClient,item,mediaSource,options.autoSearch)})}return{show:function(options){return loading.show(),require(["text!./subtitleeditor.template.html"]).then(function(responses){var template=responses[0];return showEditorInternal(options,template)})}}});