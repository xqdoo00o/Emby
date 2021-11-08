define(["exports","./../common/datetime.js","./../common/itemhelper.js"],function(_exports,_datetime,_itemhelper){function getProgressHtml(pct,options){var containerClass="itemProgressBar";return options&&options.containerClass&&(containerClass+=" "+options.containerClass),'<div class="'+containerClass+'"><div class="itemProgressBarForeground" style="width:'+pct+'%;"></div></div>'}var progressBarRequired;Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_datetime=babelHelpers.interopRequireDefault(_datetime),_itemhelper=babelHelpers.interopRequireDefault(_itemhelper),require(["css!modules/indicators/indicators.css","material-icons"]);var _default={getProgressBarHtml:function(item,options){var itemType=item.Type;if(!item.IsFolder&&"Recording"!==itemType){var userData=options&&options.userData||item.UserData;if(userData&&(pct=userData.PlayedPercentage)&&pct<100)return getProgressHtml(pct,options)}if("Program"===itemType||"Timer"===itemType||"Recording"===itemType||"TvChannel"===itemType){if((item=item.CurrentProgram||item).StartDate&&item.EndDate){var pct,startDate=0,endDate=1;try{startDate=_datetime.default.parseISO8601Date(item.StartDate).getTime()}catch(err){}try{endDate=_datetime.default.parseISO8601Date(item.EndDate).getTime()}catch(err){}if(0<(pct=(Date.now()-startDate)/(endDate-startDate)*100)&&pct<100)return function(pct,options,isRecording,start,end){progressBarRequired||(progressBarRequired=!0,require(["emby-progressbar"]));var containerClass="itemProgressBar";options&&options.containerClass&&(containerClass+=" "+options.containerClass);var foregroundClass="itemProgressBarForeground";return isRecording&&(foregroundClass+=" itemProgressBarForeground-recording"),'<div is="emby-progressbar" data-automode="time" data-starttime="'+start+'" data-endtime="'+end+'" class="'+containerClass+'"><div class="'+foregroundClass+'" style="width:'+pct+'%;"></div></div>'}(pct,options,"Timer"===itemType||"Recording"===itemType||item.TimerId,startDate,endDate)}}else if("ActiveSession"===itemType){var playstate=item.PlayState,nowplayingItem=item.NowPlayingItem;if(playstate&&nowplayingItem&&nowplayingItem.RunTimeTicks){var html=getProgressHtml(100*(playstate.PositionTicks||0)/nowplayingItem.RunTimeTicks,{});return item.TranscodingInfo&&item.TranscodingInfo.CompletionPercentage&&(html+=getProgressHtml(item.TranscodingInfo.CompletionPercentage,{containerClass:"sessionTranscodingProgress"})),html}}return""},getPlayedIndicatorHtml:function(item,classNamePrefix){var userData=item.UserData;if(userData){if(userData.Played&&_itemhelper.default.canMarkPlayed(item)&&(!item.IsFolder||"MusicAlbum"===item.Type))return'<i class="'+(classNamePrefix?classNamePrefix+"PlayedIndicator ":"")+'playedIndicator md-icon">&#xE5CA;</i>';if(userData.UnplayedItemCount&&_itemhelper.default.canMarkPlayed(item))return'<div class="'+(classNamePrefix?classNamePrefix+"CountIndicator ":"")+'CountIndicator countIndicator">'+userData.UnplayedItemCount+"</div>"}return""},getTimerIndicator:function(item,classNamePrefix){var status,itemType=(item=item.CurrentProgram||item).Type,className=classNamePrefix?classNamePrefix+"TimerIndicator ":"";if("SeriesTimer"===itemType)return'<i class="'+className+'md-icon timerIndicator indicatorIcon">&#xE062;</i>';if(item.TimerId||item.SeriesTimerId)status=item.Status||"Cancelled";else{if("Timer"!==itemType)return"";status=item.Status}return item.SeriesTimerId?"Cancelled"!==status?'<i class="'+className+'md-icon timerIndicator indicatorIcon">&#xE062;</i>':'<i class="'+className+'md-icon timerIndicator timerIndicator-inactive indicatorIcon">&#xE062;</i>':'<i class="'+className+'md-icon timerIndicator indicatorIcon">&#xE061;</i>'},getMissingIndicator:function(item,className){if("Episode"===item.Type&&"Virtual"===item.LocationType&&item.PremiereDate)try{return className&&(className+=" "),_datetime.default.parseISO8601Date(item.PremiereDate).getTime()>Date.now()?'<div class="'+className+'unairedIndicator">Unaired</div>':'<div class="'+className+'missingIndicator">Missing</div>'}catch(err){}return""}};_exports.default=_default});