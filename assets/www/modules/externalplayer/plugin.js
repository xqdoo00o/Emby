define(["events","appSettings","pluginManager","shell","filesystem"],function(Events,appSettings,pluginManager,shell,fileSystem){"use strict";return function(){var currentSrc,self=this;function getPlayer(options){var streamInfo=Object.assign({},options);return options.mediaSource&&(streamInfo.container=options.mediaSource.Container,streamInfo.protocol=options.mediaSource.Protocol,streamInfo.video3DFormat=options.mediaSource.Video3DFormat),options.item&&(streamInfo.gameSystem=options.item.GameSystemId||options.item.GameSystem),JSON.parse(appSettings.get("externalplayers")||"[]").filter(function(player){return function(player,options){if(!shell.canExec)return!1;if(player.mediaType!==options.mediaType)return!1;if("Game"===options.mediaType)return(player.gameSystem||"").toString()===(options.gameSystem||"").toString();if(function(options){var filters=[];if("Video"===options.mediaType){switch((options.container||"").toLowerCase()){case"iso":case"blurayiso":case"dvdiso":filters.push("videotype-iso");break;case"dvd":filters.push("videotype-dvd");break;case"bluray":filters.push("videotype-bluray");break;case"hddvd":filters.push("videotype-hddvd")}filters.length||("File"!==options.protocol?filters.push("videotype-stream"):filters.push("videotype-file"))}return filters}(options).filter(function(typeFilter){return!1===player[typeFilter]}).length)return!1;return!("Video"===options.mediaType&&!0===player["videotype-3d"]&&!options.video3DFormat)}(player,streamInfo)})[0]}function replaceArg(str,arg,value){return function(str,strReplace,strWith){var esc=strReplace.replace(/[-\/\\^$*+?.()|[\]{}]/g,"\\$&"),reg=new RegExp(esc,"ig");return str.replace(reg,strWith)}(str,arg,value)}function closePlayer(){return Promise.resolve()}function onEnded(){onEndedInternal(!null)}function onEndedInternal(triggerEnded){var stopInfo;triggerEnded&&(stopInfo={src:currentSrc},Events.trigger(self,"stopped",[stopInfo])),currentSrc=null}self.name="External Player",self.type="mediaplayer",self.id="externalplayer",self.priority=-10,self.supportsProgress=!1,self.isLocalPlayer=!0,self.isExternalPlayer=!0,self.canPlayMediaType=function(mediaType){return!0},self.canPlayItem=function(item,playOptions){return!("Video"===item.MediaType&&!playOptions.fullscreen)&&null!=getPlayer({mediaType:item.MediaType,container:item.Container,gameSystem:item.GameSystemId||item.GameSystem,protocol:"Remote"!==item.LocationType&&"Virtual"!==item.LocationType&&item.Path?"File":"Http",video3DFormat:item.Video3DFormat})},self.currentSrc=function(){return currentSrc},self.play=function(options){var player=getPlayer(options),path=player.path;return function(options){var url=options.url;if(!url)return Promise.resolve(options.item.Path);var mediaSource=options.mediaSource;if(!mediaSource||"File"!==mediaSource.Protocol||url===mediaSource.Path)return Promise.resolve(url);var method="bluray"===mediaSource.Container||"dvd"===mediaSource.Container||"hddvd"===mediaSource.Container?"directoryExists":"fileExists";return fileSystem[method](mediaSource.Path).then(function(){return mediaSource.Path},function(){return url})}(options).then(function(streamUrl){return shell.exec({path:path,arguments:function(player,streamUrl,options){var startPosMs=(options.playerStartPositionTicks||0)/1e4;return(player.arguments||[]).map(function(arg){return arg=replaceArg(arg,"{path}",streamUrl),arg=replaceArg(arg,"{ms}",startPosMs),arg=replaceArg(arg,"{seconds}",Math.floor(startPosMs/1e3))})}(player,streamUrl,options).join("|||")}).then(function(process){return process.promise.then(onEnded,onEnded),Promise.resolve()})})},self.setSubtitleStreamIndex=function(index){},self.canSetAudioStreamIndex=function(){return!1},self.setAudioStreamIndex=function(index){},self.currentTime=function(val){return null},self.duration=function(val){return null},self.stop=function(destroyPlayer,reportEnded){return closePlayer().then(function(){return onEndedInternal(reportEnded),Promise.resolve()})},self.destroy=function(){closePlayer()},self.pause=function(){},self.unpause=function(){},self.paused=function(){return!1},self.volume=function(val){},self.setMute=function(mute){},self.isMuted=function(){},self.getTranslations=function(){return["bg-BG","cs","de","el","en-GB","en-US","es","es-MX","et-EE","fa","fi","fr","fr-CA","gsw","he","hr","hu","it","ja","kk","ko","lt-LT","nl","no","pl","pt-BR","pt-PT","ru","sk","sl-SI","sv","tr","uk","zh-CN","zh-HK","zh-TW"].map(function(i){return{lang:i,path:pluginManager.mapPath(self,"strings/"+i+".json")}})},self.getRoutes=function(){var routes=[];return routes.push({path:"externalplayer.html",transition:"slide",controller:pluginManager.mapPath(self,"externalplayer.js"),settingsTheme:!0}),routes.push({path:"externalplayers.html",transition:"slide",controller:pluginManager.mapPath(self,"externalplayers.js"),type:"settings",title:"External Players",category:"Playback",thumbImage:"",icon:"apps",order:1e4,settingsTheme:!0}),routes},self.getDeviceProfile=function(){var bitrateSetting=appSettings.maxStreamingBitrate(),profile={};return profile.MaxStreamingBitrate=profile.MaxStaticBitrate=bitrateSetting,profile.MusicStreamingTranscodingBitrate=192e3,profile.DirectPlayProfiles=[],profile.DirectPlayProfiles.push({Type:"Video"}),profile.DirectPlayProfiles.push({Type:"Audio"}),profile.TranscodingProfiles=[],profile.TranscodingProfiles.push({Container:"mkv",Type:"Video",AudioCodec:"aac,mp3,ac3",VideoCodec:"h264",Context:"Streaming"}),profile.TranscodingProfiles.push({Container:"mp3",Type:"Audio",AudioCodec:"mp3",Context:"Streaming",Protocol:"http"}),profile.ContainerProfiles=[],profile.CodecProfiles=[],profile.SubtitleProfiles=[],profile.SubtitleProfiles.push({Format:"srt",Method:"Embed"}),profile.SubtitleProfiles.push({Format:"subrip",Method:"Embed"}),profile.SubtitleProfiles.push({Format:"ass",Method:"Embed"}),profile.SubtitleProfiles.push({Format:"ssa",Method:"Embed"}),profile.SubtitleProfiles.push({Format:"dvb_teletext",Method:"Embed"}),profile.SubtitleProfiles.push({Format:"dvb_subtitle",Method:"Embed"}),profile.SubtitleProfiles.push({Format:"dvbsub",Method:"Embed"}),profile.SubtitleProfiles.push({Format:"pgs",Method:"Embed"}),profile.SubtitleProfiles.push({Format:"pgssub",Method:"Embed"}),profile.SubtitleProfiles.push({Format:"dvdsub",Method:"Embed"}),profile.SubtitleProfiles.push({Format:"vtt",Method:"Embed"}),profile.SubtitleProfiles.push({Format:"sub",Method:"Embed"}),profile.SubtitleProfiles.push({Format:"idx",Method:"Embed"}),profile.SubtitleProfiles.push({Format:"smi",Method:"Embed"}),profile.ResponseProfiles=[],Promise.resolve(profile)}}});