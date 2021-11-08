define(["../list/list","apphost","connectionManager","loading","layoutManager","imageLoader","dom","globalize","appRouter","cardBuilder","emby-linkbutton","emby-itemscontainer","emby-scroller"],function(ListPage,appHost,connectionManager,loading,layoutManager,imageLoader,dom,globalize,appRouter,cardBuilder){"use strict";function SelectServerPage(view,params){this.enableAlphaNumericShortcuts=!1,ListPage.call(this,view,params)}return Object.assign(SelectServerPage.prototype,ListPage.prototype),SelectServerPage.prototype.getItems=function(query){return connectionManager.getAvailableServers().then(function(items){!function(items){items.push({Name:globalize.translate("HeaderAddServer"),Type:"AddServer"}),items.push({Name:globalize.translate("HeaderSignInWithConnect"),Type:"EmbyConnect"}),appHost.supports("sync")&&items.push({Name:globalize.translate("Downloads"),Type:"Downloads"})}(items=items.slice(0));var totalRecordCount=items.length;return query&&(query.StartIndex&&(items=items.slice(query.StartIndex)),null!=query.Limit&&query.Limit<items.length&&(items.length=query.Limit)),{Items:items,TotalRecordCount:totalRecordCount}})},SelectServerPage.prototype.setTitle=function(){},SelectServerPage.prototype.getCardOptions=function(items,settings){var options=ListPage.prototype.getCardOptions.apply(this,arguments);return Object.assign(options,{shape:"square",fields:["Name"],centerText:!0,overlayText:!1,multiSelect:!1,action:layoutManager.tv?"menu":"connecttoserver",defaultBackground:!0,draggable:!1,showParentTitle:!1})},SelectServerPage});