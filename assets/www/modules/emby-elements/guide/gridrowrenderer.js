define(["exports","./../../layoutmanager.js","./../../common/datetime.js","./../../common/globalize.js","./../../common/usersettings/usersettings.js","./../../shortcuts.js","./../../emby-apiclient/connectionmanager.js","./../../indicators/indicators.js","./../../skinmanager.js","./../../cardbuilder/cardbuilder.js"],function(_exports,_layoutmanager,_datetime,_globalize,_usersettings,_shortcuts,_connectionmanager,_indicators,_skinmanager,_cardbuilder){Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_layoutmanager=babelHelpers.interopRequireDefault(_layoutmanager),_datetime=babelHelpers.interopRequireDefault(_datetime),_globalize=babelHelpers.interopRequireDefault(_globalize),_usersettings=babelHelpers.interopRequireDefault(_usersettings),_shortcuts=babelHelpers.interopRequireDefault(_shortcuts),_connectionmanager=babelHelpers.interopRequireDefault(_connectionmanager),_indicators=babelHelpers.interopRequireDefault(_indicators),_skinmanager=babelHelpers.interopRequireDefault(_skinmanager),_cardbuilder=babelHelpers.interopRequireDefault(_cardbuilder);function parseDates(program){if(!program.StartDateLocalMs)try{program.StartDateLocalMs=_datetime.default.parseISO8601Date(program.StartDate,{toLocal:!0}).getTime()}catch(err){}if(!program.EndDateLocalMs)try{program.EndDateLocalMs=_datetime.default.parseISO8601Date(program.EndDate,{toLocal:!0}).getTime()}catch(err){}return null}function getProgramHtml(program,options,totalGridMs){var html="",startMs=options.startMs,endMs=options.endMs;parseDates(program);var startDateLocalMs=program.StartDateLocalMs,endDateLocalMs=program.EndDateLocalMs,renderStartMs=Math.max(startDateLocalMs,startMs),startPercent=(startDateLocalMs-startMs)/totalGridMs;startPercent*=100,startPercent=Math.max(startPercent,0);var endPercent=(Math.min(endDateLocalMs,endMs)-renderStartMs)/totalGridMs;endPercent*=100;var cssClass="programCell itemAction",accentCssClass=null,displayInnerContent=!0,displayMovieContent=options.displayMovieContent,displaySportsContent=options.displaySportsContent,displayNewsContent=options.displayNewsContent,displayKidsContent=options.displayKidsContent,displaySeriesContent=options.displaySeriesContent,enableColorCodedBackgrounds=options.enableColorCodedBackgrounds;program.IsKids?(displayInnerContent=displayKidsContent,accentCssClass="kids"):program.IsSports?(displayInnerContent=displaySportsContent,accentCssClass="sports"):program.IsNews?(displayInnerContent=displayNewsContent,accentCssClass="news"):program.IsMovie?(displayInnerContent=displayMovieContent,accentCssClass="movie"):displayInnerContent=(program.IsSeries||displayMovieContent&&displayNewsContent&&displaySportsContent&&displayKidsContent)&&displaySeriesContent,_layoutmanager.default.tv&&(cssClass+=" programCell-tv");var timerAttributes="";program.TimerId&&(timerAttributes+=' data-timerid="'+program.TimerId+'"'),program.Status&&(timerAttributes+=' data-status="'+program.Status+'"'),program.SeriesTimerId&&(timerAttributes+=' data-seriestimerid="'+program.SeriesTimerId+'"'),html+="<button"+(2<=endPercent?' is="emby-programcell"':"")+"  "+_shortcuts.default.getShortcutAttributesHtml(program,{})+' data-action="'+options.clickAction+'"'+timerAttributes+' class="'+cssClass+'" style="left:'+startPercent+"%;width:"+endPercent+'%;">';var indicatorHtml,programCellInnerClass="programCellInner";return enableColorCodedBackgrounds&&accentCssClass&&(programCellInnerClass+=" programCellInner-"+accentCssClass),html+='<div class="'+programCellInnerClass+'">',displayInnerContent&&(html+='<div class="guide-programNameCaret secondaryText hide"><i class="guideProgramNameCaretIcon md-icon">&#xE314;</i></div>',html+='<div class="guideProgramNameText">'+program.Name,indicatorHtml=null,program.IsLive&&options.showLiveIndicator?indicatorHtml='<span class="liveTvProgram guideProgramIndicator">'+_globalize.default.translate("Live")+"</span>":program.IsPremiere&&options.showPremiereIndicator?indicatorHtml='<span class="premiereTvProgram guideProgramIndicator">'+_globalize.default.translate("Premiere")+"</span>":options.showNewIndicator&&program.IsNew?indicatorHtml='<span class="newTvProgram guideProgramIndicator">'+_globalize.default.translate("AttributeNew")+"</span>":program.IsRepeat&&options.showRepeatIndicator&&(indicatorHtml='<span class="repeatTvProgram secondaryText guideProgramIndicator">'+_globalize.default.translate("Repeat")+"</span>"),html+=indicatorHtml||"",program.EpisodeTitle&&options.showEpisodeTitle&&(html+='<div class="guideProgramSecondaryInfo secondaryText">',html+=program.EpisodeTitle,html+="</div>"),html+="</div>",options.showHdIcon&&program.Width&&1200<=program.Width&&(html+='<div class="guideProgramIndicator guide-programTextIcon">'+(program.Width&&3800<=program.Width?"4K":"HD")+"</div>"),html+=function(item){var status;if("SeriesTimer"===item.Type)return'<i class="md-icon programIcon seriesTimerIcon">&#xE062;</i>';if(item.TimerId||item.SeriesTimerId)status=item.Status||"Cancelled";else{if("Timer"!==item.Type)return"";status=item.Status}return item.SeriesTimerId?"Cancelled"!==status?'<i class="md-icon programIcon seriesTimerIcon">&#xE062;</i>':'<i class="md-icon programIcon seriesTimerIcon seriesTimerIcon-inactive">&#xE062;</i>':'<i class="md-icon programIcon timerIcon">&#xE061;</i>'}(program)),html+="</div>",html+="</button>"}function getEpgRowHtml(instance,item,index,options){var apiClient=_connectionmanager.default.getApiClient(item),html="",channel=item.Channel,channelImageUrl=apiClient.getLogoImageUrl(channel,{maxHeight:220},_skinmanager.default.getPreferredLogoImageTypes()),title=[];channel.Name&&title.push(channel.Name),channel.ChannelNumber&&title.push(channel.ChannelNumber);var condensed=instance.options.condensed,cssClass=condensed?"channelCell channelCell-condensed":"channelCell";_layoutmanager.default.tv&&(cssClass+=" channelCell-tv");var titleText=title.join(" ");html+='<button type="button" '+_shortcuts.default.getShortcutAttributesHtml(channel,{})+' data-action="'+options.channelAction+'" title="'+titleText+'" aria-label="'+titleText+'" class="'+cssClass+' itemAction">';var channelCellInnerClass="channelCellInner";condensed&&(channelCellInnerClass+=" channelCellInner-condensed"),html+='<div class="'+channelCellInnerClass+'">';var guideChannelImageClass,channelTextClass="guideChannelText secondaryText";channelImageUrl?(guideChannelImageClass="guideChannelImage",condensed&&(guideChannelImageClass+=" guideChannelImage-condensed"),html+='<div class="'+guideChannelImageClass+'" style="background-image:url('+channelImageUrl+');"></div>'):(channel.Name&&condensed&&(html+='<div class="secondaryText guideChannelText-alt">'+channel.Name+"</div>"),channelTextClass+=" guideChannelText-noimage"),condensed&&(channelTextClass+=" guideChannelText-condensed"),html+='<div class="'+channelTextClass+'">',channel.Name&&(html+='<span class="guideChannelName">'+channel.Name+"</span>"),channel.ChannelNumber&&(html+=" "+channel.ChannelNumber),html+="</div>",html+="</div>",html+="</button>";var programs=item.Programs,currentProgramDisplayInfo={imgUrl:void 0,progressBar:void 0};currentProgramDisplayInfo.imgUrl?(html+='<div class="'+options.currentProgramInfoClass+'" style="background-image:url('+currentProgramDisplayInfo.imgUrl+');">',html+=currentProgramDisplayInfo.progressBar||""):html+='<div class="'+options.currentProgramInfoClass+'">',html+="</div>",html+='<div class="channelPrograms flex-grow flex">';for(var totalGridMs=options.endMs-options.startMs,i=0,length=programs.length;i<length;i++)html+=getProgramHtml(programs[i],options,totalGridMs);if(html+="</div>",options.parts)return{attributes:_shortcuts.default.getShortcutAttributes(item,options),html:html};var dataAttributes=_shortcuts.default.getShortcutAttributesHtml(item,options),tagName=options.tagName,fixedAttributes=options.fixedAttributes;return fixedAttributes&&(dataAttributes+=" "+fixedAttributes),"<"+tagName+dataAttributes+' class="'+options.className+'">'+html+"</"+tagName+">"}function GridRowRenderer(options){this.options=options}GridRowRenderer.prototype.getItemParts=function(item,index,options){return options.parts=!0,getEpgRowHtml(this,item,0,options)},GridRowRenderer.prototype.getItemsHtml=function(items,options){this.setListOptions(items,options);for(var html="",i=0,length=items.length;i<length;i++){html+=getEpgRowHtml(this,items[i],0,options)}return html},GridRowRenderer.prototype.setListOptions=function(items,options){options.isListItem=!0,options.tagName="div",options.className="epgRow flex flex-shrink-zero flex-direction-row focuscontainer-x focus-by-sequence focus-subcontainer";var condensed=this.options.condensed;condensed&&(options.className+=" epgRow-condensed");var currentProgramInfoClass="epgCurrentProgramInfo";condensed&&(currentProgramInfoClass+=" epgCurrentProgramInfo-condensed");var html='<div class="channelCell"></div><div class="'+(options.currentProgramInfoClass=currentProgramInfoClass)+'"></div><div class="channelPrograms flex-grow flex"></div>';options.templateInnerHTML=html,options.clickAction=_layoutmanager.default.tv?"link":"programdialog",options.startMs=options.startDateMs,options.endMs=options.endDateMs;var categories=options.categories||[];options.displayMovieContent=!categories.length||-1!==categories.indexOf("movies"),options.displaySportsContent=!categories.length||-1!==categories.indexOf("sports"),options.displayNewsContent=!categories.length||-1!==categories.indexOf("news"),options.displayKidsContent=!categories.length||-1!==categories.indexOf("kids"),options.displaySeriesContent=!categories.length||-1!==categories.indexOf("series"),options.enableColorCodedBackgrounds="true"===_usersettings.default.get("guide-colorcodedbackgrounds"),options.showEpisodeTitle=!condensed,options.showHdIcon="true"===_usersettings.default.get("guide-indicator-hd"),options.showLiveIndicator="false"!==_usersettings.default.get("guide-indicator-live"),options.showPremiereIndicator="false"!==_usersettings.default.get("guide-indicator-premiere"),options.showNewIndicator="false"!==_usersettings.default.get("guide-indicator-new"),options.showRepeatIndicator="true"===_usersettings.default.get("guide-indicator-repeat");var fixedAttributes="";return options.addTabIndex&&(fixedAttributes+=' tabindex="0"'),options.fixedAttributes=fixedAttributes.trim(),options},GridRowRenderer.parseDates=parseDates,GridRowRenderer.getProgramHtml=getProgramHtml,_exports.default=GridRowRenderer});