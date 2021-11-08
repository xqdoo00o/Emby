define(["pluginManager","loading","formHelper","dom"],function(pluginManager,loading,formHelper,dom){"use strict";function getWindowLocationSearch(win){var index,search=(win||window).location.search;return search||-1!==(index=window.location.href.indexOf("?"))&&(search=window.location.href.substring(index)),search||""}window.getWindowLocationSearch=getWindowLocationSearch,window.getParameterByName=function(name,url){name=name.replace(/[\[]/,"\\[").replace(/[\]]/,"\\]");var results=new RegExp("[\\?&]"+name+"=([^&#]*)","i").exec(url||getWindowLocationSearch());return null==results?"":decodeURIComponent(results[1].replace(/\+/g," "))};var Dashboard=window.Dashboard||(window.Dashboard={});Dashboard.confirm=function(message,title,callback){require(["confirm"],function(confirm){confirm(message,title).then(function(){callback(!0)},function(){callback(!1)})})},Dashboard.showLoadingMsg=function(){loading.show()},Dashboard.hideLoadingMsg=function(){loading.hide()},Dashboard.getCurrentUser=function(){return ApiClient.getCurrentUser()},Dashboard.getCurrentUserId=function(){return ApiClient.getCurrentUserId()},Dashboard.navigate=function(url,preserveQueryString){if(!url)throw new Error("url cannot be null or empty");var queryString=getWindowLocationSearch();return preserveQueryString&&queryString&&(url+=queryString),require(["appRouter"]).then(function(responses){return responses[0].show(url)})},Dashboard.processPluginConfigurationUpdateResult=function(){require(["toast","globalize"],function(toast,globalize){loading.hide(),toast(globalize.translate("MessageSettingsSaved"))})},Dashboard.getConfigurationPageUrl=function(name){return pluginManager.getConfigurationPageUrl(name)},Dashboard.getConfigurationResourceUrl=function(name){return pluginManager.getConfigurationResourceUrl(name)},Dashboard.alert=function(options){"string"!=typeof options?require(["alert","globalize"],function(alert,globalize){alert({title:options.title||globalize.translate("HeaderAlert"),text:options.message}).then(options.callback||function(){})}):require(["toast"],function(toast){toast({text:options})})},Dashboard.processServerConfigurationUpdateResult=function(response){return formHelper.handleConfigurationSavedResponse(response)},Dashboard.processErrorResponse=function(response){return formHelper.handleErrorResponse(response)},window.pageClassOn=function(eventName,className,fn){document.addEventListener(eventName,function(e){var target=e.target;target.classList.contains(className)&&fn.call(target,e)})},window.pageIdOn=function(eventName,id,fn){document.addEventListener(eventName,function(e){var target=e.target;target.id===id&&fn.call(target,e)})},dom.parentWithClass=function(elem,classNames){return Array.isArray(classNames)?elem.closest("."+classNames.join(",.")):elem.closest("."+classNames)}});