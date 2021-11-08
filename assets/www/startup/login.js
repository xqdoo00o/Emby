define(["../list/list","./startuphelper","apphost","connectionManager","globalize","appRouter","emby-linkbutton","emby-itemscontainer","emby-scroller"],function(ListPage,startupHelper,appHost,connectionManager,globalize,appRouter){"use strict";function setItemProperies(server){}function LoginPage(view,params){this.enableAlphaNumericShortcuts=!1,ListPage.call(this,view,params),view.querySelector(".itemsContainer").addEventListener("action-null",function(e){var item=e.detail.item;"User"!==item.Type?appRouter.showItem(item):item.HasPassword?appRouter.showItem({Type:"ManualLogin",ServerId:item.ServerId,Username:item.Name}):startupHelper.authenticateUser(item.ServerId,item.Name)}.bind(this)),function(view,apiClient){appHost.supports("multiserver")||apiClient.getJSON(apiClient.getUrl("Branding/Configuration")).then(function(options){var elem=view.querySelector(".disclaimer");options.LoginDisclaimer&&elem.classList.remove("hide"),elem.textContent=options.LoginDisclaimer||""})}(view,connectionManager.getApiClient(params.serverId))}return Object.assign(LoginPage.prototype,ListPage.prototype),LoginPage.prototype.getItems=function(query){var serverId=this.params.serverId;return connectionManager.getApiClient(serverId).getPublicUsers().then(function(items){items.forEach(setItemProperies),function(items,serverId){items.push({Name:globalize.translate("HeaderManualLogin"),Type:"ManualLogin",ServerId:serverId}),items.push({Name:globalize.translate("HeaderForgotPassword"),Type:"ForgotPassword",ServerId:serverId}),appHost.supports("multiserver")&&items.push({Name:globalize.translate("HeaderChangeServer"),Type:"SelectServer"})}(items,serverId);var totalRecordCount=items.length;return query&&(query.StartIndex&&(items=items.slice(query.StartIndex)),null!=query.Limit&&query.Limit<items.length&&(items.length=query.Limit)),{Items:items,TotalRecordCount:totalRecordCount}})},LoginPage.prototype.setTitle=function(){},LoginPage.prototype.getCardOptions=function(items,settings){var options=ListPage.prototype.getCardOptions.apply(this,arguments);return options=Object.assign(options,{shape:"auto",fields:["Name"],centerText:!0,overlayText:!1,multiSelect:!1,contextMenu:!1,action:"custom",defaultBackground:!0,draggable:!1,showParentTitle:!1})},LoginPage});