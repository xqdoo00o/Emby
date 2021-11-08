define(["exports","./globalize.js","./../emby-apiclient/connectionmanager.js","./servicelocator.js"],function(_exports,_globalize,_connectionmanager,_servicelocator){function canEditInternal(user,item){if(!item.Id)return!1;var itemType=item.Type;return"UserRootFolder"!==itemType&&"CollectionFolder"!==itemType&&"UserView"!==itemType&&"PlaylistsFolder"!==itemType&&"ApiKey"!==itemType&&("Program"!==itemType&&("Genre"!==itemType&&"MusicGenre"!==itemType&&"GameGenre"!==itemType&&"Studio"!==itemType&&"Tag"!==itemType&&("Timer"!==itemType&&("SeriesTimer"!==itemType&&("Plugin"!==itemType&&("Server"!==itemType&&("ItemImage"!==itemType&&("ActivityLogEntry"!==itemType&&("ActiveSession"!==itemType&&(("Recording"!==itemType||"Completed"===item.Status)&&("ChannelManagementInfo"===itemType?item.ManagementId&&item.ManagementId!==item.Id:!isLocalItem(item))))))))))))}function isLocalItem(item){if(item){var id=item.Id;if("string"==typeof id&&id.startsWith("local"))return!0}return!1}Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_globalize=babelHelpers.interopRequireDefault(_globalize),_connectionmanager=babelHelpers.interopRequireDefault(_connectionmanager);var _default={getDisplayName:function(item,options){if(!item)throw new Error("null item passed into getDisplayName");options=options||{};var number,nameSeparator,itemType=item.Type;"Timer"===itemType&&(item=item.ProgramInfo||item);var name=("Program"!==itemType&&"Recording"!==itemType||!item.IsSeries&&!item.EpisodeTitle?item.Name:item.EpisodeTitle)||"";return"TvChannel"===itemType?item.ChannelNumber?options.channelNumberFirst?item.ChannelNumber+" "+name:name+" "+item.ChannelNumber:name:(!1!==options.enableSpecialEpisodePrefix&&0===item.ParentIndexNumber&&"Episode"===itemType?name=_globalize.default.translate("ValueSpecialEpisodeName",name):null==item.IndexNumber||!1===options.includeIndexNumber||"Episode"!==itemType&&"Program"!==itemType?null!=item.IndexNumber&&!1!==options.includeIndexNumber&&item.SupportsResume&&"Audio"===itemType&&(nameSeparator=" - ",(number=item.IndexNumber)&&(name=name?number+nameSeparator+name:number)):(number=item.IndexNumber,!(nameSeparator=" - ")!==options.includeParentInfo&&null!=item.ParentIndexNumber?number="S"+item.ParentIndexNumber+":E"+number:nameSeparator=". ",null!=item.IndexNumberEnd&&(number+="-"+item.IndexNumberEnd),number&&(name=name?number+nameSeparator+name:number)),name)},supportsAddingToCollection:function(item,user){var itemType=item.Type;return("Recording"!==itemType||"Completed"===item.Status)&&(!item.CollectionType&&(!["ActiveSession","Genre","MusicGenre","Studio","GameGenre","Tag","UserView","CollectionFolder","Audio","Program","Timer","SeriesTimer","BoxSet","ApiKey","TvChannel"].includes(itemType)&&(!isLocalItem(item)&&("Photo"!==item.MediaType&&("Device"!==itemType&&"User"!==itemType&&"Plugin"!==itemType&&"Server"!==itemType&&"ActivityLogEntry"!==itemType&&"ItemImage"!==itemType&&"LiveTVTunerDevice"!==itemType&&"LiveTVGuideSource"!==itemType&&"ChannelManagementInfo"!==itemType&&(!!item.Id&&(!item.ExtraType&&(!user||!!user.Policy.IsAdministrator&&canEditInternal(0,item)))))))))},supportsAddingToPlaylist:function(item){var itemType=item.Type;if("Program"===itemType)return!1;if("TvChannel"===itemType)return!1;if("Timer"===itemType)return!1;if("SeriesTimer"===itemType)return!1;if("VirtualFolder"===itemType)return!1;if("ActiveSession"===itemType)return!1;if("Recording"===itemType&&"Completed"!==item.Status)return!1;var mediaType=item.MediaType;if("Photo"===mediaType)return!1;if("Game"===mediaType)return!1;var collectionType=item.CollectionType;return"livetv"!==collectionType&&"playlists"!==collectionType&&(!isLocalItem(item)&&(!(!item.IsFolder&&"Genre"!==itemType&&"MusicGenre"!==itemType&&"MusicAlbum"!==itemType&&"MusicArtist"!==itemType&&"Studio"!==itemType&&"Tag"!==itemType)||"Device"!==itemType&&"User"!==itemType&&"Plugin"!==itemType&&"Server"!==itemType&&"ActivityLogEntry"!==itemType&&"ApiKey"!==itemType&&(!!item.Id&&(item.ExtraType?_connectionmanager.default.getApiClient(item).isMinServerVersion("4.6.0.13"):item.MediaType))))},isLocalItem:isLocalItem,canIdentify:function(user,item){var itemType=item.Type;return!("Movie"!==itemType&&"Trailer"!==itemType&&"Series"!==itemType&&"Game"!==itemType&&"BoxSet"!==itemType&&"Person"!==itemType&&"Book"!==itemType&&"MusicAlbum"!==itemType&&"MusicArtist"!==itemType&&"MusicVideo"!==itemType||!user.Policy.IsAdministrator||isLocalItem(item))},canEdit:function(user,item){return canEditInternal(0,item)&&user.Policy.IsAdministrator},canEditSubtitles:function(user,item){var itemType=item.Type;if("Video"===item.MediaType&&"TvChannel"!==itemType&&"Program"!==itemType&&"Virtual"!==item.LocationType&&("Recording"!==itemType||"Completed"===item.Status)){if(user.Policy.EnableSubtitleDownloading||user.Policy.EnableSubtitleManagement)return canEditInternal(0,item);if(null==user.Policy.EnableSubtitleDownloading&&null==user.Policy.EnableSubtitleManagement)return canEditInternal(0,item)&&user.Policy.IsAdministrator}return!1},canDownloadSubtitles:function(user,item){var itemType=item.Type;return this.canEditSubtitles(user,item)&&("Movie"===itemType||"Episode"===itemType)},canEditImages:function(user,item){var itemType=item.Type;return"Photo"!==item.MediaType&&("CollectionFolder"!==itemType&&"UserView"!==itemType&&"PlaylistsFolder"!==itemType&&"Genre"!==itemType&&"MusicGenre"!==itemType&&"GameGenre"!==itemType&&"Studio"!==itemType&&"Tag"!==itemType||isLocalItem(item)?"Device"!==itemType&&"User"!==itemType&&"Plugin"!==itemType&&"LiveTVTunerDevice"!==itemType&&"LiveTVGuideSource"!==itemType&&(("Recording"!==itemType||"Completed"===item.Status)&&(canEditInternal(0,item)&&user.Policy.IsAdministrator)):!!user.Policy.IsAdministrator)},canSync:function(user,item){return!(user&&!user.Policy.EnableContentDownloading)&&(!isLocalItem(item)&&item.SupportsSync)},canShare:function(item,user){if(!user)return!1;if(!item.Id)return!1;var itemType=item.Type;return"TvChannel"!==itemType&&"Channel"!==itemType&&"Person"!==itemType&&"Year"!==itemType&&"Program"!==itemType&&"Timer"!==itemType&&"SeriesTimer"!==itemType&&"GameGenre"!==itemType&&"MusicGenre"!==itemType&&"Genre"!==itemType&&"Device"!==itemType&&"User"!==itemType&&"Plugin"!==itemType&&"Server"!==itemType&&"ActivityLogEntry"!==itemType&&"ApiKey"!==itemType&&"Tag"!==itemType&&"VirtualFolder"!==itemType&&"ItemImage"!==itemType&&"LiveTVTunerDevice"!==itemType&&"LiveTVGuideSource"!==itemType&&"ChannelManagementInfo"!==itemType&&"ActiveSession"!==itemType&&(("Recording"!==itemType||"Completed"===item.Status)&&(!isLocalItem(item)&&(user.Policy.EnablePublicSharing&&_servicelocator.appHost.supports("sharing"))))},enableDateAddedDisplay:function(item){var itemType=item.Type;return!item.IsFolder&&item.MediaType&&"Program"!==itemType&&"TvChannel"!==itemType&&"Trailer"!==itemType},canMarkPlayed:function(item){if(item.SupportsResume)return!0;var itemType=item.Type,mediaType=item.MediaType;return"Program"!==itemType&&("Video"===mediaType&&"TvChannel"!==itemType||("AudioBook"===itemType||"Series"===itemType||"Season"===itemType||"Game"===mediaType||"Book"===mediaType||"Recording"===mediaType||("Folder"===itemType||"CollectionFolder"===itemType&&("boxsets"!==item.CollectionType&&"playlists"!==item.CollectionType&&"music"!==item.CollectionType))))},canRate:function(item){var itemType=item.Type;return"Program"!==itemType&&"Timer"!==itemType&&"SeriesTimer"!==itemType&&"CollectionFolder"!==itemType&&"UserView"!==itemType&&"Channel"!==itemType&&"Season"!==itemType&&"Studio"!==itemType&&!!item.UserData},canConvert:function(item,user){if(!item.Id)return!1;var mediaType=item.MediaType;if("Book"===mediaType||"Photo"===mediaType||"Game"===mediaType||"Audio"===mediaType)return!1;var collectionType=item.CollectionType;if("livetv"===collectionType||"playlists"===collectionType||"boxsets"===collectionType)return!1;var type=item.Type;return"TvChannel"!==type&&"Channel"!==type&&"Person"!==type&&"Year"!==type&&"Program"!==type&&"Timer"!==type&&"SeriesTimer"!==type&&"GameGenre"!==type&&"Device"!==type&&"User"!==type&&"Plugin"!==type&&"VirtualFolder"!==type&&"ItemImage"!==type&&"Server"!==type&&"ActivityLogEntry"!==type&&"ApiKey"!==type&&"LiveTVTunerDevice"!==type&&"LiveTVGuideSource"!==type&&"ChannelManagementInfo"!==type&&"ActiveSession"!==type&&(!("Virtual"===item.LocationType&&!item.IsFolder)&&(!!user.Policy.EnableMediaConversion&&!isLocalItem(item)))},canRefreshMetadata:function(item,user){if(!item.Id)return!1;var itemType=item.Type;if("Device"===itemType||"User"===itemType||"Plugin"===itemType||"Server"===itemType||"ActivityLogEntry"===itemType||"ApiKey"===itemType||"ItemImage"===itemType||"LiveTVTunerDevice"===itemType||"LiveTVGuideSource"===itemType||"ChannelManagementInfo"===itemType||"ActiveSession"===itemType)return!1;var collectionType=item.CollectionType;return"livetv"!==collectionType&&"boxsets"!==collectionType&&!(!user.Policy.IsAdministrator||"Timer"===itemType||"SeriesTimer"===itemType||"Program"===itemType||"TvChannel"===itemType||"Recording"===itemType&&"Completed"!==item.Status||isLocalItem(item))},supportsMediaSourceSelection:function(item){return"Video"===item.MediaType&&("TvChannel"!==item.Type&&!(!item.MediaSources||1===item.MediaSources.length&&"Placeholder"===item.MediaSources[0].Type))},supportsSimilarItems:function(item){var itemType=item.Type;return"Movie"===itemType||"Trailer"===itemType||"Series"===itemType||"Program"===itemType||"Recording"===itemType||"Game"===itemType||"MusicAlbum"===itemType||"MusicArtist"===itemType||"MusicVideo"===itemType},supportsSimilarItemsOnLiveTV:function(item,apiClient){var itemType=item.Type;return"Movie"===itemType||"Trailer"===itemType||"Series"===itemType},supportsExtras:function(item){return!item.IsFolder&&("TvChannel"!==item.Type&&"Program"!==item.Type&&"Video"===item.MediaType)},canManageMultiVersionGrouping:function(item,user){return!item.IsFolder&&"Video"===item.MediaType&&(!isLocalItem(item)&&(!!user.Policy.IsAdministrator&&"TvChannel"!==item.Type))},getContentTypeName:function(contentType){if(!contentType)return _globalize.default.translate("MixedContent");switch(contentType){case"movies":return _globalize.default.translate("Movies");case"music":return _globalize.default.translate("Music");case"tvshows":return _globalize.default.translate("TVShows");case"books":return _globalize.default.translate("Books");case"games":return _globalize.default.translate("Games");case"musicvideos":return _globalize.default.translate("MusicVideos");case"homevideos":return _globalize.default.translate("HomeVideosAndPhotos");case"audiobooks":return _globalize.default.translate("AudioBooks");case"boxsets":return _globalize.default.translate("Collections");case"playlists":return _globalize.default.translate("Playlists");default:return contentType}},getItemTypeName:function(type){if(!type)return null;switch(type){case"Genre":case"MusicGenre":case"GameGenre":return _globalize.default.translate("Genre");case"BoxSet":return _globalize.default.translate("Collection");case"Audio":return _globalize.default.translate("Song");case"MusicArtist":return _globalize.default.translate("Artist");case"MusicAlbum":return _globalize.default.translate("Album");case"MusicVideo":return _globalize.default.translate("HeaderMusicVideo");case"TvChannel":return _globalize.default.translate("Channel");case"LiveTvProgram":return _globalize.default.translate("Program")}return _globalize.default.translate(type)},getPluralItemTypeName:function(type){switch(type){case"Genre":case"MusicGenre":case"GameGenre":return _globalize.default.translate("Genres");case"BoxSet":return _globalize.default.translate("Collections");case"Audio":return _globalize.default.translate("Songs");case"MusicArtist":return _globalize.default.translate("Artists");case"MusicAlbum":return _globalize.default.translate("Albums");case"MusicVideo":return _globalize.default.translate("HeaderMusicVideos");case"Person":return _globalize.default.translate("People");case"TvChannel":return _globalize.default.translate("Channels");case"Series":return _globalize.default.translate("Shows");case"LiveTvProgram":return _globalize.default.translate("Programs")}return _globalize.default.translate(type+"s")}};_exports.default=_default});