define(["exports","./htmlmediahelper.js","./../emby-apiclient/connectionmanager.js"],function(_exports,_htmlmediahelper,_connectionmanager){function BaseHtmlPlayer(){this.type="mediaplayer"}function onShakaError(event){var error=event.detail||event;console.log("Error code",error.code,"object",error)}function getPosterUrl(item){var imageOptions={};return function(item,options){if(!item)throw new Error("item cannot be null!");return"Episode"!==item.Type?null:((options=options||{}).type=options.type||"Primary","Primary"===options.type&&item.SeriesPrimaryImageTag?(options.tag=item.SeriesPrimaryImageTag,_connectionmanager.default.getApiClient(item).getImageUrl(item.SeriesId,options)):"Thumb"===options.type&&item.ParentThumbImageTag?(options.tag=item.ParentThumbImageTag,_connectionmanager.default.getApiClient(item).getImageUrl(item.ParentThumbItemId,options)):null)}(item,imageOptions)||function(item,options){if(!item)throw new Error("item cannot be null!");return(options=options||{}).type=options.type||"Primary",item.ImageTags&&item.ImageTags[options.type]?(options.tag=item.ImageTags[options.type],_connectionmanager.default.getApiClient(item).getImageUrl(item.PrimaryImageItemId||item.Id,options)):item.AlbumId&&item.AlbumPrimaryImageTag?(options.tag=item.AlbumPrimaryImageTag,_connectionmanager.default.getApiClient(item).getImageUrl(item.AlbumId,options)):null}(item,imageOptions)}function setCurrentTimeIfNeeded(element,seconds,allowance){Math.abs((element.currentTime||0)-seconds)>=allowance&&(element.currentTime=seconds)}Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_htmlmediahelper=babelHelpers.interopRequireDefault(_htmlmediahelper),_connectionmanager=babelHelpers.interopRequireDefault(_connectionmanager),BaseHtmlPlayer.prototype.canPlayMediaType=function(mediaType){return(mediaType||"").toLowerCase()===this.mediaType},BaseHtmlPlayer.prototype.currentSrc=function(){return this._currentSrc},BaseHtmlPlayer.prototype.getDeviceProfile=function(item,options){return _htmlmediahelper.default.getDeviceProfile(this,item,options)},BaseHtmlPlayer.prototype.currentTime=function(val){var mediaElement=this._mediaElement;if(mediaElement){if(null!=val)return void(mediaElement.currentTime=val/1e3);var currentTime=this._currentTime;return currentTime?1e3*currentTime:1e3*(mediaElement.currentTime||0)}},BaseHtmlPlayer.prototype.duration=function(val){var mediaElement=this._mediaElement;if(mediaElement){var duration=mediaElement.duration;if(_htmlmediahelper.default.isValidDuration(duration))return 1e3*duration}return null},BaseHtmlPlayer.prototype.getBufferedRanges=function(){var mediaElement=this._mediaElement;return mediaElement?_htmlmediahelper.default.getBufferedRanges(this,mediaElement):[]},BaseHtmlPlayer.prototype.pause=function(){var mediaElement=this._mediaElement;mediaElement&&mediaElement.pause()},BaseHtmlPlayer.prototype.resume=function(){var mediaElement=this._mediaElement;mediaElement&&mediaElement.play()},BaseHtmlPlayer.prototype.unpause=function(){var mediaElement=this._mediaElement;mediaElement&&mediaElement.play()},BaseHtmlPlayer.prototype.paused=function(){var mediaElement=this._mediaElement;return!!mediaElement&&mediaElement.paused},BaseHtmlPlayer.prototype.setVolume=function(val){var mediaElement=this._mediaElement;mediaElement&&(mediaElement.volume=val/100)},BaseHtmlPlayer.prototype.getVolume=function(){var mediaElement=this._mediaElement;if(mediaElement)return Math.min(Math.round(100*mediaElement.volume),100)},BaseHtmlPlayer.prototype.setPlaybackRate=function(val){var mediaElement=this._mediaElement;mediaElement&&(mediaElement.playbackRate=val)},BaseHtmlPlayer.prototype.getPlaybackRate=function(){var mediaElement=this._mediaElement;if(mediaElement)return mediaElement.playbackRate},BaseHtmlPlayer.prototype.volumeUp=function(){this.setVolume(Math.min(this.getVolume()+2,100))},BaseHtmlPlayer.prototype.volumeDown=function(){this.setVolume(Math.max(this.getVolume()-2,0))},BaseHtmlPlayer.prototype.setMute=function(mute){var mediaElement=this._mediaElement;mediaElement&&(mediaElement.muted=mute)},BaseHtmlPlayer.prototype.isMuted=function(){var mediaElement=this._mediaElement;return!!mediaElement&&mediaElement.muted},BaseHtmlPlayer.prototype.seekable=function(){var mediaElement=this._mediaElement;if(mediaElement){var seekable=mediaElement.seekable;if(seekable&&seekable.length){var start=seekable.start(0),end=seekable.end(0);return _htmlmediahelper.default.isValidDuration(start)||(start=0),_htmlmediahelper.default.isValidDuration(end)||(end=0),0<end-start}return!1}},BaseHtmlPlayer.prototype.setSrcWithShakaPlayer=function(elem,options,url){var instance=this;return require(["shaka"]).then(function(responses){var player=new responses[0].Player(elem);return player.configure({abr:{enabled:!1}}),player.addEventListener("error",onShakaError),instance._shakaPlayer=player,instance._currentSrc=url,player.load(url)})},BaseHtmlPlayer.prototype.setCurrentSrcChromecast=function(elem,options,url,hasHlsTextTracks,tracksHtml){elem.autoplay=!0;var lrd=new cast.framework.messages.LoadRequestData;lrd.currentTime=(options.playerStartPositionTicks||0)/1e7,lrd.autoplay=!0,lrd.media=new cast.framework.messages.MediaInformation,lrd.media.contentId=url,lrd.media.contentUrl=url,lrd.media.contentType=options.mimeType,lrd.media.streamType=cast.framework.messages.StreamType.BUFFERED,lrd.media.customData={options:options,hasHlsTextTracks:hasHlsTextTracks,tracksHtml:tracksHtml};var posterUrl,images,item=options.item,supportImages=!0;return"Audio"===item.MediaType?(lrd.media.metadata=new cast.framework.messages.MusicTrackMediaMetadata,lrd.media.mediaCategory=cast.framework.messages.MediaCategory.AUDIO,item.Album&&(lrd.media.metadata.albumName=item.Album),null!=item.IndexNumber&&(lrd.media.metadata.trackNumber=item.IndexNumber),null!=item.ParentIndexNumber&&(lrd.media.metadata.discNumber=item.ParentIndexNumber),item.AlbumArtists&&item.AlbumArtists.length&&(lrd.media.metadata.albumArtist=item.AlbumArtists[0].Name),item.ArtistItems&&item.ArtistItems.length&&(lrd.media.metadata.artist=item.ArtistItems[0].Name),lrd.media.metadata.songTitle=item.Name):"Photo"===item.MediaType?(lrd.media.metadata=new cast.framework.messages.PhotoMediaMetadata,lrd.media.mediaCategory=cast.framework.messages.MediaCategory.IMAGE,supportImages=!1):"Episode"===item.Type?(lrd.media.metadata=new cast.framework.messages.TvShowMediaMetadata,lrd.media.mediaCategory=cast.framework.messages.MediaCategory.VIDEO,item.SeriesName&&(lrd.media.metadata.seriesTitle=item.SeriesName),null!=item.IndexNumber&&(lrd.media.metadata.episode=item.IndexNumber),null!=item.ParentIndexNumber&&(lrd.media.metadata.season=item.ParentIndexNumber)):("Movie"===item.Type||"Trailer"===item.Type?lrd.media.metadata=new cast.framework.messages.MovieMediaMetadata:lrd.media.metadata=new cast.framework.messages.GenericMediaMetadata,lrd.media.mediaCategory=cast.framework.messages.MediaCategory.VIDEO),item.OfficialRating&&(lrd.media.metadata.contentRating=item.OfficialRating),lrd.media.metadata.title=item.Name,item.Studios&&item.Studios.length&&(lrd.media.metadata.studio=item.Studios[0].Name),lrd.media.userActionStates=[cast.framework.messages.UserActionState.LIKE,cast.framework.messages.UserActionState.DISLIKE],supportImages&&(images=[],(posterUrl=getPosterUrl(item))&&(lrd.media.metadata.posterUrl=posterUrl,images.push(new cast.framework.messages.Image(lrd.media.metadata.posterUrl))),lrd.media.metadata.images=images),console.log("loading media url into mediaManager"),cast.framework.CastReceiverContext.getInstance().getPlayerManager().load(lrd)},BaseHtmlPlayer.prototype.setSrcWithFlvJs=function(elem,options,url){var instance=this;return new Promise(function(resolve,reject){require(["flvjs"],function(flvjs){var flvPlayer=flvjs.createPlayer({type:"flv",url:url},{seekType:"range",lazyLoad:!1,rangeLoadZeroStart:!0});flvPlayer.attachMediaElement(elem),flvPlayer.load(),flvPlayer.play().then(resolve,reject),instance._flvPlayer=flvPlayer,instance._currentSrc=url})})},BaseHtmlPlayer.prototype.setSrcWithHlsJs=function(elem,options,url,onError){var instance=this;return new Promise(function(resolve,reject){var callback;callback=function(Hls){var hlsOptions={manifestLoadingTimeOut:2e4,debug:!1,testBandwidth:!1,emeEnabled:!1};"Audio"===options.mediaType&&(hlsOptions.maxMaxBufferLength=120);var hls=new Hls(hlsOptions);hls.subtitleDisplay=!1,hls.loadSource(url),hls.attachMedia(elem),_htmlmediahelper.default.bindEventsToHlsPlayer(instance,hls,elem,onError,resolve,reject),instance._hlsPlayer=hls,instance._currentSrc=url},require(["hlsjs"],function(hls){window.Hls=hls,callback(hls)})})},BaseHtmlPlayer.prototype.seekOnPlaybackStart=function(element,ticks){var seconds=(ticks||0)/1e7;seconds&&(setCurrentTimeIfNeeded(element,seconds,5),5<=Math.abs((element.currentTime||0)-seconds)&&function(element,seconds,allowance){setTimeout(function(){setCurrentTimeIfNeeded(element,seconds,allowance)},2500)}(element,seconds,10))},BaseHtmlPlayer.prototype.bindMediaManagerEvents=function(){cast.framework.CastReceiverContext.getInstance().getPlayerManager().setMessageInterceptor(cast.framework.messages.MessageType.LOAD,function(data){var media=data.media,customData=media.customData,val=media.contentId,options=customData.options,elem=this._mediaElement;return this.loadIntoPlayer(elem,options,val,media,data,customData).then(function(){return null})}.bind(this))},BaseHtmlPlayer.prototype.unBindMediaManagerEvents=function(){cast.framework.CastReceiverContext.getInstance().getPlayerManager().setMessageInterceptor(cast.framework.messages.MessageType.LOAD,null)},_exports.default=BaseHtmlPlayer});