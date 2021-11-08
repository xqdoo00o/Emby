define(["itemsTab","globalize","userSettings"],function(ItemsTab,globalize,userSettings){"use strict";function AlbumsTab(view,params){this.enableAlphaPicker=!0,ItemsTab.call(this,view,params)}return Object.assign(AlbumsTab.prototype,ItemsTab.prototype),AlbumsTab.prototype.getCardOptions=function(items,settings){var options=ItemsTab.prototype.getCardOptions.apply(this,arguments);return options.showParentTitle=settings.fields.includes("Name"),options},AlbumsTab.prototype.getContext=function(){return"music"},AlbumsTab.prototype.getSettingsKey=function(){return ItemsTab.prototype.getSettingsKey.call(this)+"-albums"},AlbumsTab.prototype.getVisibleViewSettings=function(){return{settings:["imageType","groupItemsIntoCollections"],fields:["Name","ProductionYear"]}},AlbumsTab.prototype.getVisibleFilters=function(){return["Genres","Studios","Tags","OfficialRatings","Years","IsFavorite","HasOverview","IsLocked"]},AlbumsTab.prototype.getItemTypes=function(){return["MusicAlbum"]},AlbumsTab.prototype.getCriticRatingSortOption=function(){return null},AlbumsTab.prototype.getSortMenuOptions=function(){var sortBy=ItemsTab.prototype.getSortMenuOptions.call(this);return sortBy.push({name:globalize.translate("AlbumArtist"),value:"AlbumArtist,SortName"}),this.sortOptionsByName(sortBy),sortBy},AlbumsTab.prototype.getViewSettingDefaults=function(currentItem,listItems,allowedVisibleFields){var defaults=ItemsTab.prototype.getViewSettingDefaults.apply(this,arguments);return defaults.fields=["Name"],defaults},AlbumsTab});