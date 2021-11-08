define(["loading","mainTabsManager","globalize","formHelper","emby-linkbutton","emby-checkbox","emby-input","emby-select","emby-button"],function(loading,mainTabsManager,globalize,formHelper){"use strict";function onSubmit(e){loading.show();var form=this;return ApiClient.getNamedConfiguration("livetv").then(function(config){config.GuideDays=form.querySelector("#selectGuideDays").value||null;var recordingPath=form.querySelector("#txtRecordingPath").value||null,movieRecordingPath=form.querySelector("#txtMovieRecordingPath").value||null,seriesRecordingPath=form.querySelector("#txtSeriesRecordingPath").value||null,recordingPathChanged=recordingPath!==config.RecordingPath||movieRecordingPath!==config.MovieRecordingPath||seriesRecordingPath!==config.SeriesRecordingPath;config.RecordingPath=recordingPath,config.MovieRecordingPath=movieRecordingPath,config.SeriesRecordingPath=seriesRecordingPath,config.WakeServer=form.querySelector(".chkWakeServer").checked,config.RecordingEncodingFormat="mkv",config.PrePaddingSeconds=60*form.querySelector("#txtPrePaddingMinutes").value,config.PostPaddingSeconds=60*form.querySelector("#txtPostPaddingMinutes").value,config.RecordingPostProcessor=form.querySelector("#txtPostProcessor").value,config.RecordingPostProcessorArguments=form.querySelector("#txtPostProcessorArguments").value,ApiClient.updateNamedConfiguration("livetv",config).then(function(){formHelper.handleConfigurationSavedResponse(),function(recordingPathChanged){var msg="";recordingPathChanged&&(msg+=globalize.translate("RecordingPathChangeMessage"));msg&&require(["alert"],function(alert){alert(msg)})}(recordingPathChanged)})}),e.preventDefault(),e.stopPropagation(),!1}function getTabs(){var list=[{href:"livetvsetup/livetvstatus.html",name:globalize.translate("Setup")}];return ApiClient.isMinServerVersion("4.6.0.44")&&list.push({href:"livetvsetup/channels",name:globalize.translate("Channels")}),list.push({href:"livetvsetup/livetvsettings.html",name:globalize.translate("Advanced")}),list}return function(view,params){var page=view;page.querySelector(".liveTvSettingsForm").addEventListener("submit",onSubmit),page.querySelector("#btnSelectRecordingPath").addEventListener("click",function(){require(["directorybrowser"],function(directoryBrowser){var picker=new directoryBrowser;picker.show({callback:function(path){path&&(page.querySelector("#txtRecordingPath").value=path),picker.close()},validateWriteable:!0})})}),page.querySelector("#btnSelectMovieRecordingPath").addEventListener("click",function(){require(["directorybrowser"],function(directoryBrowser){var picker=new directoryBrowser;picker.show({callback:function(path){path&&(page.querySelector("#txtMovieRecordingPath").value=path),picker.close()},validateWriteable:!0})})}),page.querySelector("#btnSelectSeriesRecordingPath").addEventListener("click",function(){require(["directorybrowser"],function(directoryBrowser){var picker=new directoryBrowser;picker.show({callback:function(path){path&&(page.querySelector("#txtSeriesRecordingPath").value=path),picker.close()},validateWriteable:!0})})}),page.querySelector("#btnSelectPostProcessorPath").addEventListener("click",function(){require(["directorybrowser"],function(directoryBrowser){var picker=new directoryBrowser;picker.show({includeFiles:!0,callback:function(path){path&&(page.querySelector("#txtPostProcessor").value=path),picker.close()}})})}),view.addEventListener("viewshow",function(){mainTabsManager.setTabs(this,getTabs().length-1,getTabs),loading.show();var page=this;ApiClient.getSystemInfo().then(function(systemInfo){systemInfo.SupportsWakeServer?page.querySelector(".fldWakeServer").classList.remove("hide"):page.querySelector(".fldWakeServer").classList.add("hide")}),ApiClient.getNamedConfiguration("livetv").then(function(config){!function(page,config){page.querySelector("#selectGuideDays",page).value=config.GuideDays||"",page.querySelector("#txtPrePaddingMinutes",page).value=config.PrePaddingSeconds/60,page.querySelector("#txtPostPaddingMinutes",page).value=config.PostPaddingSeconds/60,page.querySelector("#txtRecordingPath").value=config.RecordingPath||"",page.querySelector("#txtMovieRecordingPath").value=config.MovieRecordingPath||"",page.querySelector("#txtSeriesRecordingPath").value=config.SeriesRecordingPath||"",page.querySelector("#txtPostProcessor").value=config.RecordingPostProcessor||"",page.querySelector("#txtPostProcessorArguments").value=config.RecordingPostProcessorArguments||"",page.querySelector(".chkWakeServer").checked=null==config.WakeServer||config.WakeServer,loading.hide()}(page,config)})})}});