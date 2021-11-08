define(["dom","loading","globalize","formHelper","emby-input","emby-checkbox","emby-button","flexStyles"],function(dom,loading,globalize,formHelper){"use strict";function loadData(page){loading.show(),ApiClient.getNamedConfiguration("devices").then(function(config){!function(page,config){page.querySelector("#txtUploadPath").value=config.CameraUploadPath||"",page.querySelector("#chkSubfolder").checked=config.EnableCameraUploadSubfolders}(page,config),loading.hide()})}function onSubmit(e){return function(page){ApiClient.getNamedConfiguration("devices").then(function(config){config.CameraUploadPath=page.querySelector("#txtUploadPath").value,config.EnableCameraUploadSubfolders=page.querySelector("#chkSubfolder").checked,ApiClient.updateNamedConfiguration("devices",config).then(formHelper.handleConfigurationSavedResponse)})}(this.closest(".page")),e.stopPropagation(),e.preventDefault(),!1}return function(view,params){view.querySelector("#btnSelectUploadPath").addEventListener("click",function(){require(["directorybrowser"],function(directoryBrowser){var picker=new directoryBrowser;picker.show({callback:function(path){path&&(view.querySelector("#txtUploadPath").value=path),picker.close()},validateWriteable:!0,header:globalize.translate("HeaderSelectUploadPath")})})}),view.querySelector(".devicesUploadForm").addEventListener("submit",onSubmit),view.addEventListener("viewshow",function(){loadData(this)}),view.querySelector(".premiereInfo").innerHTML=globalize.translate("FeatureRequiresEmbyPremiere",'<a href="https://emby.media/premiere" data-preset="premiereinfo" is="emby-linkbutton" type="button" class="button-link">',"</a>")}});