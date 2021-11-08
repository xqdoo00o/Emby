define(["playbackManager","itemHelper","events","connectionManager"],function(playbackManager,itemHelper,events,connectionManager){"use strict";var currentPlayer;function pushImageUrl(item,height,list){var imageOptions={height:height},url=function(item,options){return"Episode"!==item.Type?null:((options=options||{}).type=options.type||"Primary","Primary"===options.type&&item.SeriesPrimaryImageTag?(options.tag=item.SeriesPrimaryImageTag,connectionManager.getApiClient(item).getImageUrl(item.SeriesId,options)):"Thumb"===options.type&&item.ParentThumbImageTag?(options.tag=item.ParentThumbImageTag,connectionManager.getApiClient(item).getImageUrl(item.ParentThumbItemId,options)):null)}(item,imageOptions)||function(item,options){return(options=options||{}).type=options.type||"Primary",item.ImageTags&&item.ImageTags[options.type]?(options.tag=item.ImageTags[options.type],connectionManager.getApiClient(item).getImageUrl(item.Id,options)):item.AlbumId&&item.AlbumPrimaryImageTag?(options.tag=item.AlbumPrimaryImageTag,connectionManager.getApiClient(item).getImageUrl(item.AlbumId,options)):null}(item,imageOptions);url&&list.push({src:url,sizes:height+"x"+height})}function updatePlayerState(player,state){var title,albumArtist,artist,album,itemId,duration,playState,currentTime,isPaused,item=state.NowPlayingItem;item&&("Video"===item.MediaType||"Audio"===item.MediaType)?(title=itemHelper.getDisplayName(item,{}),item.AlbumArtists&&item.AlbumArtists[0]&&(albumArtist=item.AlbumArtists[0].Name),item.ArtistItems?item.ArtistItems.length&&(artist=item.ArtistItems[0].Name):artist=item.SeriesName,album=item.Album||"",itemId=item.Id,duration=parseInt(item.RunTimeTicks?item.RunTimeTicks/1e4:0),playState=state.PlayState||{},currentTime=parseInt(playState.PositionTicks?playState.PositionTicks/1e4:0),isPaused=playState.IsPaused||!1,navigator.mediaSession.metadata=new MediaMetadata({title:title,artist:artist,album:album,artwork:function(item){var list=[];return pushImageUrl(item,96,list),pushImageUrl(item,128,list),pushImageUrl(item,192,list),pushImageUrl(item,256,list),pushImageUrl(item,384,list),pushImageUrl(item,512,list),list}(item),albumArtist:albumArtist,currentTime:currentTime,duration:duration,paused:isPaused,itemId:itemId,mediaType:item.MediaType,trackNumber:item.IndexNumber})):hideMediaControls()}function onGeneralEvent(e){updatePlayerState(0,playbackManager.getPlayerState(this),e.type)}function onStateChanged(e,state){updatePlayerState(0,state)}function onPlaybackStart(e,state){updatePlayerState(0,state,e.type)}function onPlaybackStopped(e,state){state.NextMediaType||hideMediaControls()}function hideMediaControls(){navigator.mediaSession.metadata=null}function bindToPlayer(player){currentPlayer&&(events.off(currentPlayer,"playbackstart",onPlaybackStart),events.off(currentPlayer,"playbackstop",onPlaybackStopped),events.off(currentPlayer,"unpause",onGeneralEvent),events.off(currentPlayer,"pause",onGeneralEvent),events.off(currentPlayer,"statechange",onStateChanged),events.off(currentPlayer,"timeupdate",onGeneralEvent),currentPlayer=null,hideMediaControls()),player&&(currentPlayer=player,updatePlayerState(0,playbackManager.getPlayerState(player)),events.on(currentPlayer,"playbackstart",onPlaybackStart),events.on(currentPlayer,"playbackstop",onPlaybackStopped),events.on(currentPlayer,"unpause",onGeneralEvent),events.on(currentPlayer,"pause",onGeneralEvent),events.on(currentPlayer,"statechange",onStateChanged),events.on(currentPlayer,"timeupdate",onGeneralEvent))}function execute(name){playbackManager[name](currentPlayer)}navigator.mediaSession.setActionHandler("previoustrack",function(){execute("previousTrack")}),navigator.mediaSession.setActionHandler("nexttrack",function(){execute("nextTrack")}),navigator.mediaSession.setActionHandler("play",function(){execute("unpause")}),navigator.mediaSession.setActionHandler("pause",function(){execute("pause")});try{navigator.mediaSession.setActionHandler("stop",function(){playbackManager.isPairing()||execute("stop")})}catch(err){console.log(err)}try{navigator.mediaSession.setActionHandler("seekto",function(data){var ticks;data.fastSeek||(ticks=1e3*data.seekTime*1e4,playbackManager.seek(ticks,currentPlayer))})}catch(err){console.log(err)}navigator.mediaSession.setActionHandler("seekbackward",function(){execute("rewind")}),navigator.mediaSession.setActionHandler("seekforward",function(){execute("fastForward")}),events.on(playbackManager,"playerchange",function(){bindToPlayer(playbackManager.getCurrentPlayer())}),bindToPlayer(playbackManager.getCurrentPlayer())});