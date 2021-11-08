define(["exports","./dom.js","./common/globalize.js","./loading/loading.js","./approuter.js","./common/appsettings.js","./common/playback/playbackmanager.js","./emby-apiclient/connectionmanager.js"],function(_exports,_dom,_globalize,_loading,_approuter,_appsettings,_playbackmanager,_connectionmanager){function downloadFiles(urls){return require(["multi-download"]).then(function(responses){(0,responses[0])(urls)})}function alertText(options){return require(["alert"]).then(function(responses){responses[0](options)})}function removeFromResume(item,options,mode){return require(["confirm"]).then(function(responses){var confirm=responses[0],confirmHeader=_globalize.default.translate("nextup"===mode?"HeaderRemoveFromNextUp":"HeaderRemoveFromContinueWatching"),apiClient=_connectionmanager.default.getApiClient(item);return confirm({title:confirmHeader,text:_globalize.default.translate("nextup"===mode||"Episode"===item.Type&&!apiClient.isMinServerVersion("4.6.0.9")?"RemoveThisTitleFromNextUp":"RemoveThisTitleFromContinueWatching"),confirmText:_globalize.default.translate("Remove"),primary:"cancel"}).then(function(){return apiClient.updateHideFromResume(item.Id,!0)})})}function markFavorite(item,isFavorite){var apiClient=_connectionmanager.default.getApiClient(item);return apiClient.updateFavoriteStatus(apiClient.getCurrentUserId(),item.Id,isFavorite)}function addToList(itemId,serverId,listType){return require(["addToList"]).then(function(responses){return(new responses[0]).show({items:[itemId],serverId:serverId,type:listType})})}function afterWakeAttempt(){var timeMs,apiClient=this;return timeMs=12e3,new Promise(function(resolve,reject){setTimeout(resolve,timeMs)}).then(function(){return apiClient.getPublicSystemInfo()})}function wakeServer(apiClient){return require(["loadingDialog"]).then(function(responses){var dlg=new responses[0]({title:_globalize.default.translate("HeaderWakeServer"),text:_globalize.default.translate("AttemptingWakeServer")}),showDialogPromise=dlg.show(),state={dlg:dlg,showDialogPromise:showDialogPromise},afterWol=afterWakeAttempt.bind(apiClient);return apiClient.wakeOnLan().then(afterWol,afterWol).then(function(){var promise=this.showDialogPromise.then(function(){return require(["alert"]).then(function(responses){return responses[0]({text:_globalize.default.translate("WakeServerSuccess"),title:_globalize.default.translate("HeaderWakeServer")}).catch(getResolvedPromise)})}),dlg=this.dlg;return dlg.hide(),dlg.destroy(),promise}.bind(state),function(){var promise=this.showDialogPromise.then(function(){return require(["alert"]).then(function(responses){return responses[0]({text:_globalize.default.translate("WakeServerError"),title:_globalize.default.translate("HeaderWakeServer")}).catch(getResolvedPromise)})}),dlg=this.dlg;return dlg.hide(),dlg.destroy(),promise}.bind(state))})}function getResolvedPromise(){return Promise.resolve()}function playAllFromHere(itemElement,serverId,queue){var itemsContainer=itemElement.closest(".itemsContainer"),startIndex=itemsContainer.indexOfElement(itemElement);if(itemsContainer&&itemsContainer.fetchData){var limit=1e3;queue||(limit+=startIndex||0);var fetchAll=!queue&&startIndex<limit,queryOptions=fetchAll?{Limit:limit}:{StartIndex:startIndex,Limit:limit};return itemsContainer.fetchData(queryOptions).then(function(result){return queue?_playbackmanager.default.queue({items:result.Items||result}):_playbackmanager.default.play({items:result.Items||result,startIndex:fetchAll?startIndex:null})})}for(var parent=itemElement.parentNode,className=itemElement.classList.length?"."+itemElement.classList[0]:"",cards=parent.querySelectorAll(className+"[data-id]"),ids=[],foundCard=!1,i=0,length=cards.length;i<length;i++)cards[i]===itemElement&&(foundCard=!0,startIndex=i),!foundCard&&queue||ids.push(cards[i].getAttribute("data-id"));if(ids.length)return queue?_playbackmanager.default.queue({ids:ids,serverId:serverId}):_playbackmanager.default.play({ids:ids,serverId:serverId,startIndex:startIndex})}function sendToast(text){return require(["toast"]).then(function(responses){return(0,responses[0])(text),Promise.resolve()})}function notifyAddedToPlayQueue(){return sendToast({text:_globalize.default.translate("HeaderAddedToPlayQueue"),icon:"playlist_add"}),Promise.resolve()}function notifyPlayingNext(){return sendToast({text:_globalize.default.translate("HeaderPlayingNext"),icon:"playlist_add"}),Promise.resolve()}function play(item,resume,queue,queueNext){var method=queue?queueNext?"queueNext":"queue":"play",options={startPositionTicks:!1===resume?0:item.StartPositionTicks};null!=item.ChapterIndex?(options.ids=[item.Id],options.serverId=item.ServerId):options.items=[item];var promise=_playbackmanager.default[method](options);return queueNext?promise=promise.then(notifyPlayingNext):queue&&(promise=promise.then(notifyAddedToPlayQueue)),promise}function showItem(item,options){var itemsContainer;return options&&(options.parentId||!options.itemElement&&!options.positionTo||(itemsContainer=(options.itemElement||options.positionTo).closest(".itemsContainer"))&&(options.parentId=itemsContainer.getAttribute("data-parentid")||null)),_approuter.default.showItem(item,options)}function editItem(apiClient,item,options){if("Device"===item.Type||"User"===item.Type||"ActiveSession"===item.Type||"SeriesTimer"===item.Type||"LiveTVTunerDevice"===item.Type||"LiveTVGuideSource"===item.Type)return showItem(item,options);var serverId=apiClient.serverId();return"Timer"===item.Type?function(itemId,serverId){return _connectionmanager.default.getApiClient(serverId).getLiveTvTimer(itemId).then(function(item){return item.ProgramId?_approuter.default.showItem(item.ProgramId,serverId):require(["recordingEditor"]).then(function(objects){return objects[0].show(itemId,serverId)})})}(item.Id,serverId):"VirtualFolder"===item.Type?function(item,options){var button=options.positionTo,view=button.closest(".page"),refreshLibrary=!!button&&"true"===view.getAttribute("data-refreshlibrary");return require(["medialibraryeditor"]).then(function(responses){return(new responses[0]).show({refresh:refreshLibrary,library:item})})}(item,options):require(["metadataEditor"]).then(function(responses){return responses[0].show(item.Id,serverId)})}function getRejectedPromise(){return Promise.reject()}function alertUpdateImageError(){return require(["alert"]).then(function(responses){return(0,responses[0])(_globalize.default.translate("DefaultErrorMessage")).then(getRejectedPromise,getRejectedPromise)})}function moveImage(item,options,newIndex){return _connectionmanager.default.getApiClient(item).updateItemImageIndex(item.Id,item.ImageType,item.ImageIndex,newIndex).catch(alertUpdateImageError)}function moveChannel(item,options,newIndex){return _connectionmanager.default.getApiClient(item).setChannelSortIndex(item,newIndex)}Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_dom=babelHelpers.interopRequireDefault(_dom),_globalize=babelHelpers.interopRequireDefault(_globalize),_loading=babelHelpers.interopRequireDefault(_loading),_approuter=babelHelpers.interopRequireDefault(_approuter),_appsettings=babelHelpers.interopRequireDefault(_appsettings),_playbackmanager=babelHelpers.interopRequireDefault(_playbackmanager),_connectionmanager=babelHelpers.interopRequireDefault(_connectionmanager);var _default={executeCommand:function(command,item,options){if("open"===command||"link"===command){if("photo"!==item.MediaType)return showItem(item,options);command="play"}if("download"===command)return function(item,options){var apiClient=_connectionmanager.default.getApiClient(item);if("Log"===item.Type)return downloadFiles([apiClient.getLogDownloadUrl(item)]);if("MediaStream"===item.Type&&"Subtitle"===item.StreamType){var url="Videos/"+item.ItemId+"/"+item.MediaSourceId+"/Subtitles/"+item.Index+"/Stream."+item.Codec;return apiClient.isMinServerVersion("4.7.0.8")&&(url+="?SetFilename=true"),downloadFiles([apiClient.getUrl(url)])}var mediaSourceId=options?options.mediaSourceId:null;return downloadFiles([apiClient.getItemDownloadUrl(item.Id,mediaSourceId)])}(item,options);if("edit"===command)return editItem(_connectionmanager.default.getApiClient(item),item,options);if("delete"===command)return function(item,options){return require(["deleteHelper"]).then(function(responses){return responses[0].deleteItem({item:item,navigate:options.navigateOnDelete||!1,positionTo:options.positionTo})})}(item,options);if("identify"===command)return function(item){return require(["itemIdentifier"]).then(function(responses){return responses[0].show(item)})}(item);if("preview"===command)return function(item){var apiClient=_connectionmanager.default.getApiClient(item);return apiClient.getText(apiClient.getUrl("Videos/"+item.ItemId+"/"+item.MediaSourceId+"/Subtitles/"+item.Index+"/Stream."+item.Codec)).then(function(result){return alertText({preFormattedText:_dom.default.stripScripts(result),confirmText:_globalize.default.translate("Close"),title:_globalize.default.translate("Subtitles")})})}(item);if("removefromresume"===command)return removeFromResume(item);if("removefromnextup"===command)return removeFromResume(item,0,"nextup");if("playtrailer"===command)return function(item){var apiClient=_connectionmanager.default.getApiClient(item);return apiClient.getLocalTrailers(apiClient.getCurrentUserId(),item.Id).then(function(trailers){_playbackmanager.default.play({items:trailers})})}(item);if("addtoplaylist"===command)return addToList(item.Id,item.ServerId,"Playlist");if("addtocollection"===command)return addToList(item.Id,item.ServerId,"Collection");if("connecttoserver"===command)return function(item){return"AddServer"===item.Type||"Downloads"===item.Type?_approuter.default.showItem(item):"EmbyConnect"===item.Type?_approuter.default.showConnectLogin():(_loading.default.show(),item=_connectionmanager.default.getServerInfo(item.Id)||item,_connectionmanager.default.connectToServer(item,{enableAutoLogin:_appsettings.default.enableAutoLogin()}).then(function(result){return _approuter.default.handleConnectionResult(result)}))}(item);if("setplaylistindex"===command)return _playbackmanager.default.setCurrentPlaylistItem(item.PlaylistItemId);if("multiselect"===command)return function(options){return options.positionTo.closest(".itemsContainer").showMultiSelect(options.positionTo,!0),Promise.resolve()}(options);if("wakeserver"===command)return wakeServer(_connectionmanager.default.getApiClient(item));if("instantmix"===command)return _playbackmanager.default.instantMix(item);if("shuffle"===command)return _playbackmanager.default.shuffle(item);if("playallfromhere"===command)return playAllFromHere(options.itemElement,item.ServerId);if("queueallfromhere"===command)return playAllFromHere(options.itemElement,item.ServerId,!0);if("play"===command)return play(item,!0);if("playfrombeginning"===command)return play(item,!1);if("resume"===command||"playpause"===command)return play(item,!0);if("queue"===command)return play(item,!1,!0);if("queuenext"===command)return play(item,!1,!0,!0);if("overview"===command)return alertText(_dom.default.stripScripts(item.Overview||""));if("programlink"!==command)return"album"===command?(_approuter.default.showItem(item.AlbumId,item.ServerId),Promise.resolve()):"artist"===command?(_approuter.default.showItem(item.ArtistItems[0].Id,item.ServerId),Promise.resolve()):"markplayed"===command?function(item){var apiClient=_connectionmanager.default.getApiClient(item);return apiClient.markPlayed(apiClient.getCurrentUserId(),item.Id)}(item):"markunplayed"===command?function(item){var apiClient=_connectionmanager.default.getApiClient(item);return apiClient.markUnplayed(apiClient.getCurrentUserId(),item.Id)}(item):"favorite"===command?markFavorite(item,!0):"unfavorite"===command?markFavorite(item,!1):"searchimageproviders"===command?function(item){return require(["imageDownloader"]).then(function(responses){var ImageDownloader=responses[0];_connectionmanager.default.getApiClient(item);return(new ImageDownloader).show({item:item.OwnerItem,imageType:item.ImageType})})}(item):"addimage"===command?function(item){return require(["imageUploader"]).then(function(responses){return responses[0].show({imageType:item.ImageType,item:item.OwnerItem})})}(item):"moveimageleft"===command?moveImage(item,0,item.ImageIndex-1):"moveimageright"===command?moveImage(item,0,item.ImageIndex+1):"addimagefromurl"===command?function(item){return require(["prompt"]).then(function(responses){return(0,responses[0])({title:_globalize.default.translate(item.ImageTag?"HeaderSetImageFromUrl":"HeaderAddImageFromUrl"),label:_globalize.default.translate("LabelUrl")}).then(function(url){return _connectionmanager.default.getApiClient(item).updateItemImageFromUrl(item.Id,item.ImageType,item.ImageIndex,url).catch(alertUpdateImageError)})})}(item):"togglechanneldisabled"===command?function(item,options){if(!options.eventType||"change"!==options.eventType)return Promise.resolve();var checked=options.eventTarget.checked,apiClient=_connectionmanager.default.getApiClient(item);return _loading.default.show(),apiClient.setChannelDisabled(item,!checked).then(function(updatedChannel){_loading.default.hide()})}(item,options):"movechannelup"===command?moveChannel(item,0,item.SortIndexNumber-1):"movechanneldown"===command?moveChannel(item,0,item.SortIndexNumber+1):"copytoclipboard"===command?function(item){return navigator.clipboard.writeText(item.AccessToken)}(item):"seektoposition"===command?function(item){return _playbackmanager.default.seek(item.StartPositionTicks||0)}(item):"session_shownowplayingitem"===command&&item.NowPlayingItem?showItem(item.NowPlayingItem,options):"session_stop"===command?_connectionmanager.default.getApiClient(item.ServerId).sendPlayStateCommand(item.Id,"Stop"):"session_playpause"===command?_connectionmanager.default.getApiClient(item.ServerId).sendPlayStateCommand(item.Id,"PlayPause"):"session_sendmessage"===command?function(item){return require(["prompt"]).then(function(responses){(0,responses[0])({title:_globalize.default.translate("HeaderSendMessage"),label:_globalize.default.translate("LabelMessageText"),confirmText:_globalize.default.translate("ButtonSend")}).then(function(text){return text?_connectionmanager.default.getApiClient(item).sendMessageCommand(item.Id,{Text:text,TimeoutMs:5e3}):Promise.reject()})})}(item):Promise.reject();var program=item.CurrentProgram||item;return program.ServerId||(program.ServerId=item.ServerId),showItem(program,options)}};_exports.default=_default});