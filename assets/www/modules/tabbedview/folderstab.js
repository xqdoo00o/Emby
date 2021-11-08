define(["itemsTab","globalize","require"],function(ItemsTab,globalize,require){"use strict";function FoldersTab(view,params){this.enableAlphaPicker=!0,ItemsTab.call(this,view,params)}return Object.assign(FoldersTab.prototype,ItemsTab.prototype),FoldersTab.prototype.getBaseQuery=function(){var query=ItemsTab.prototype.getBaseQuery.apply(this,arguments);return query.ParentId=this.params.parentId,query.Recursive=!1,query},FoldersTab.prototype.getContext=function(){return"folders"},FoldersTab.prototype.getSettingsKey=function(){return ItemsTab.prototype.getSettingsKey.call(this)+"-folders"},FoldersTab.prototype.getCardOptions=function(items,settings){var options=ItemsTab.prototype.getCardOptions.apply(this,arguments);return options.typeIndicator=!0,options},FoldersTab.prototype.getDefaultSortBy=function(){return this.getFolderSortOption().value},FoldersTab.prototype.getFolderSortOption=function(){return this.apiClient.isMinServerVersion("4.6.0.9")?{name:globalize.translate("FileName"),value:"IsFolder,Filename",defaultSortOrder:"Ascending"}:{name:globalize.translate("Folders"),value:"IsFolder,SortName",defaultSortOrder:"Ascending"}},FoldersTab.prototype.getVisibleViewSettings=function(){return{settings:["imageType","groupItemsIntoCollections"],fields:["Name"]}},FoldersTab.prototype.getVisibleFilters=function(){return[]},FoldersTab.prototype.loadTemplate=function(){return require(["text!./folderstab.template.html"])},FoldersTab});