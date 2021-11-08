define(["exports","./../../browser.js","./../../shortcuts.js","./../../emby-apiclient/connectionmanager.js","./../../common/input/api.js","./../../emby-apiclient/events.js","./../../common/globalize.js","./../../dom.js","./../../layoutmanager.js","./../../common/datetime.js","./../../focusmanager.js","./../../loading/loading.js","./../../common/usersettings/usersettings.js","./gridrowrenderer.js"],function(_exports,_browser,_shortcuts,_connectionmanager,_api,_events,_globalize,_dom,_layoutmanager,_datetime,_focusmanager,_loading,_usersettings,_gridrowrenderer){Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_browser=babelHelpers.interopRequireDefault(_browser),_shortcuts=babelHelpers.interopRequireDefault(_shortcuts),_connectionmanager=babelHelpers.interopRequireDefault(_connectionmanager),_api=babelHelpers.interopRequireDefault(_api),_events=babelHelpers.interopRequireDefault(_events),_globalize=babelHelpers.interopRequireDefault(_globalize),_dom=babelHelpers.interopRequireDefault(_dom),_layoutmanager=babelHelpers.interopRequireDefault(_layoutmanager),_datetime=babelHelpers.interopRequireDefault(_datetime),_focusmanager=babelHelpers.interopRequireDefault(_focusmanager),_loading=babelHelpers.interopRequireDefault(_loading),_usersettings=babelHelpers.interopRequireDefault(_usersettings),_gridrowrenderer=babelHelpers.interopRequireDefault(_gridrowrenderer),require(["css!modules/emby-elements/guide/guide.css","programStyles","material-icons","scrollStyles","emby-button","paper-icon-button-light","emby-scroller","flexStyles"]);var cellDurationMs=18e5,msPerPage=288e5,startId=Date.now();function normalizeDateToTimeslot(value,roundUp){var delta=value%cellDurationMs;return roundUp&&delta&&(value+=cellDurationMs),value-=delta}function onSettingsButtonClick(){var instance=this;require(["guide-settings-dialog"],function(guideSettingsDialog){guideSettingsDialog.show(instance.categoryOptions,_connectionmanager.default.getApiClient(instance.options.serverId)).then(function(){instance.refresh()})})}function onDateButtonClick(e){var instance=this;require(["actionsheet"],function(actionsheet){var options=function(instance){var items=[],start=new Date(instance._startDateMs),end=new Date(instance._endDateMs),today=new Date,nowHours=today.getHours(),nowMinutes=30<=today.getMinutes()?30:0;start.setHours(nowHours,nowMinutes,0,0),end.setHours(0,0,0,0),start.getTime()>=end.getTime()&&end.setDate(start.getDate()+1),start=new Date(Math.max(today,start));var scroller=instance.scroller,scrollWidth=instance.scroller.getScrollWidth();scrollWidth-=getChannelCellWidth(instance);var startDate=instance._startDateMs,endDate=instance._endDateMs,currentPositionMs=scroller.getScrollLeft()/scrollWidth*(endDate-startDate);currentPositionMs+=startDate;for(var date=new Date(currentPositionMs);start<=end;)items.push({name:_datetime.default.toLocaleDateString(start,{weekday:"long",month:"short",day:"numeric"}),value:start.getTime().toString(),selected:date.getDate()===start.getDate()&&date.getMonth()===start.getMonth()&&date.getFullYear()===start.getFullYear()}),start.setDate(start.getDate()+1),start.setHours(0,0,0,0);return items}(instance);actionsheet.show({items:options,positionTo:e.target,title:_globalize.default.translate("HeaderSelectDate"),positionY:"bottom"}).then(function(value){scrollToTimeMs(this,value,!1)}.bind(instance))})}function scrollToTimeMs(instance,value,exactTime){value=parseInt(value),exactTime&&(value=normalizeDateToTimeslot(value));var date=new Date;date.setTime(value);var startDate,endDate,currentPositionMs,currentPositionDate,scrollPos,scroller=instance.scroller,scrollWidth=instance.scroller.getScrollWidth();scrollWidth&&(scrollWidth-=getChannelCellWidth(instance),startDate=instance._startDateMs,endDate=instance._endDateMs,exactTime||(currentPositionMs=scroller.getScrollLeft()/scrollWidth*(endDate-startDate),currentPositionMs+=startDate,currentPositionDate=new Date(currentPositionMs),date.setHours(currentPositionDate.getHours(),currentPositionDate.getMinutes()+1,0,0),date.setTime(normalizeDateToTimeslot(date.getTime()))),scrollPos=Math.max(date.getTime()-startDate,0)/(endDate-startDate)*scrollWidth,scroller.scrollToPosition({left:scrollPos,behavior:"instant"}),onScroll.call(instance,{currentTarget:instance.scroller,target:instance.scroller}))}function setPaddingLeft(elem,value){(elem._paddingLeft||"0")!==value&&(elem._paddingLeft=value,elem.style.paddingLeft=value)}function getChannelCellWidth(instance){var channelCellWidth=instance.channelCellWidth;return channelCellWidth||(channelCellWidth=instance.firstChannelCell.offsetWidth,instance.channelCellWidth=channelCellWidth),channelCellWidth}function getTimeBlockStart(instance,scrollLeft,scrollWidth){var startDate=instance._startDateMs,endDate=instance._endDateMs,currentPositionMs=scrollWidth?scrollLeft/scrollWidth*(endDate-startDate):0,currentPositionMs=Math.floor(currentPositionMs);return currentPositionMs-=currentPositionMs%msPerPage,currentPositionMs+=startDate}function getProgramFieldsProperty(){var programFields=[];return"true"===_usersettings.default.get("guide-indicator-hd")&&(programFields.push("IsHD"),programFields.push("Width")),programFields.length?programFields.join(","):null}function loadPrograms(instance,epgRowMap,channelIds,timeBlockStart){var apiClient=_connectionmanager.default.getApiClient(instance.options.serverId),cacheKey=[apiClient.getCurrentUserId(),timeBlockStart.toString(),channelIds.join(",")].join("|");instance.programCache||(instance.programCache={});var offset,programQuery,promise,cachedResult=instance.programCache[cacheKey];return cachedResult&&(promise=Promise.resolve(cachedResult)),promise||(offset=timeBlockStart===getTimeBlockStart(instance,0,0)?1e3:0,programQuery={UserId:apiClient.getCurrentUserId(),MaxStartDate:new Date(timeBlockStart+msPerPage).toISOString(),MinEndDate:new Date(timeBlockStart+offset).toISOString(),channelIds:channelIds.join(","),ImageTypeLimit:1,SortBy:"StartDate",EnableTotalRecordCount:!1,EnableUserData:!1,Fields:getProgramFieldsProperty()},promise=apiClient.getLiveTvPrograms(programQuery)),promise.then(function(result){return instance.programCache[cacheKey]=result,function(instance,epgRowMap,programs){for(var i=0,length=programs.length;i<length;i++){var program=programs[i],epgItem=epgRowMap[program.ChannelId];epgItem&&function(instance,epgItem,program){_gridrowrenderer.default.parseDates(program);var insertAtIndex,programs=epgItem.Programs,programMap=epgItem.ProgramMap,programId=program.Id;programMap[programId]||(programMap[programId]=program,insertAtIndex=getInsertIndex(programs,program.StartDateLocalMs),programs.splice(insertAtIndex,0,program));var channelRow=epgItem.RowElement;{var channelProgramsElement,options,totalGridMs,html,insertBeforeChild;!channelRow||(channelProgramsElement=channelRow.children[2])&&(programMap=channelRow.ProgramMap)&&(programMap[programId]||(programMap[programId]=program,programs=channelRow.Programs,insertAtIndex=getInsertIndex(programs,program.StartDateLocalMs),programs.splice(insertAtIndex,0,program),options=instance.programRenderOptions,totalGridMs=options.endMs-options.startMs,html=_gridrowrenderer.default.getProgramHtml(program,options,totalGridMs),(insertBeforeChild=channelProgramsElement.children[insertAtIndex])?insertBeforeChild.insertAdjacentHTML("beforebegin",html):channelProgramsElement.insertAdjacentHTML("beforeend",html)))}}(instance,epgItem,program)}updateCellTexts(instance)}(instance,epgRowMap,result.Items)})}function getInsertIndex(programs,programStartTime){for(var numPrograms=programs.length,insertAtIndex=numPrograms,i=0,length=numPrograms;i<length;i++)if(programStartTime<=programs[i].StartDateLocalMs){insertAtIndex=i;break}return insertAtIndex}function onScroll(e){var channelCellWidth,scrollWidth,scrollPct,scrollLeft=(e.currentTarget||e.target).getScrollLeft(),scrollXChanged=this.lastScrollLeft!==scrollLeft||_browser.default.firefox;scrollXChanged&&this.headerScroller.scrollToPosition({left:scrollLeft,behavior:"instant"}),(scrollXChanged||e.forceHorizontalChange)&&(_layoutmanager.default.tv&&(scrollLeft?this.firstChannelCell.classList.add("firstChannelCell-withscroll"):this.firstChannelCell.classList.remove("firstChannelCell-withscroll")),channelCellWidth=getChannelCellWidth(this),scrollWidth=this.scroller.getScrollWidth()-channelCellWidth,scrollPct=scrollLeft?scrollLeft/scrollWidth*100:0,this.lastHorizontalScrollPct=scrollPct,this.startDataLoadTimer(scrollLeft),this.lastScrollLeft=scrollLeft,updateCellTexts(this,scrollPct,e.updateProgramTextRow),scrollXChanged&&this.updateDateButtonText(scrollLeft,scrollWidth))}function updateCellTexts(instance,scrollPct,rowToUpdate){var scrollLeft,channelCellWidth,scrollWidth;if(null==scrollPct&&(scrollLeft=instance.scroller.getScrollLeft(),channelCellWidth=getChannelCellWidth(instance),scrollWidth=instance.scroller.getScrollWidth()-channelCellWidth,scrollPct=scrollLeft?scrollLeft/scrollWidth*100:0),rowToUpdate)updateProgramCellTextsForRow(rowToUpdate,scrollPct);else for(var activeItemElements=instance.itemsContainer.virtualScroller.getActiveItems().elements,i=0,length=activeItemElements.length;i<length;i++)updateProgramCellTextsForRow(activeItemElements[i],scrollPct)}function updateProgramCellTextsForRow(row,scrollPct){var channelPrograms=row.children[2];if(channelPrograms)for(var programCells=channelPrograms.children,caretFound=!1,i=0,length=programCells.length;i<length;i++)!function(cell,scrollPct,hidden){var left,width,right,pctOfWidth;hidden||((left=cell.posLeft)||(left=parseFloat(cell.style.left.replace("%","")),cell.posLeft=left),(width=cell.posWidth)||(width=parseFloat(cell.style.width.replace("%","")),cell.posWidth=width),right=left+width,99.8<=(pctOfWidth=(Math.max(Math.min(scrollPct,right),left)-left)/width*100)&&(pctOfWidth=0));var programCellInner=cell.programCellInner;!programCellInner&&pctOfWidth&&(programCellInner=cell.firstChild,cell.programCellInner=programCellInner);var caret=cell.caret;if(!caret&&pctOfWidth&&(caret=programCellInner.firstChild,cell.caret=caret),programCellInner){if(pctOfWidth)return setPaddingLeft(programCellInner,pctOfWidth+"%"),caret&&!1!==caret._hidden&&(caret._hidden=!1,caret.classList.remove("hide")),1;setPaddingLeft(programCellInner,"0"),caret&&!1===caret._hidden&&(caret._hidden=!0,caret.classList.add("hide"))}}(programCells[i],scrollPct,caretFound)||(caretFound=!0)}function getScrollPosition(scrollContainer,item,horizontal,customOffset){customOffset=customOffset||0;var elem,slideeOffset=scrollContainer.getScrollContainerBoundingClientRect(),itemOffset=(elem=item).getBoundingClientRect?elem.getBoundingClientRect():{top:0,left:0},offset=horizontal?itemOffset.left-slideeOffset.left:itemOffset.top-slideeOffset.top,size=horizontal?itemOffset.width:itemOffset.height;size||0===size||(size=item[horizontal?"offsetWidth":"offsetHeight"]);var currentStart=horizontal?scrollContainer.getScrollLeft():scrollContainer.getScrollTop();offset+=currentStart;var frameSize=horizontal?slideeOffset.width:slideeOffset.height;return{start:offset+customOffset,center:offset-frameSize/2+size/2,end:offset-frameSize+size,size:size,isVisible:currentStart<=offset+customOffset&&offset+size<=currentStart+frameSize}}function onLiveButtonClick(e){scrollToTimeMs(this,Date.now(),!0)}function onFocusInScroller(e){var scroller,container,elem,posX,posY,target=e.target,focused=_focusmanager.default.focusableParent(target);focused&&(scroller=e.currentTarget,posX=getScrollPosition(container=scroller,elem=focused,!0,0-getChannelCellWidth(this)),posY=getScrollPosition(container,elem,!1,0),posX.isVisible&&posY.isVisible||container.scrollToPosition({left:posX.start,top:posY.center}));var row,programs,id,item,programCell=target.closest(".programCell");programCell&&(row=programCell.closest(".epgRow"),programs=_shortcuts.default.getItemFromChildNode(row,!0).Programs,id=programCell.getAttribute("data-id"),(item=programs.filter(function(p){return p.Id===id})[0])&&_events.default.trigger(this,"focus",[{item:item}]))}function bindScrollEventOnUpgrade(){this.scroller.addScrollEventListener?(this.scroller.addScrollEventListener(onScroll.bind(this),{passive:!0}),this.headerScroller.addScrollEventListener(function(e){}.bind(this),{passive:!0})):this.scroller.addEventListener("upgraded",bindScrollEventOnUpgrade.bind(this))}function initialRender(instance){return instance.rendered?Promise.resolve():(instance.rendered=!0,require(["text!modules/emby-elements/guide/tvguide.template.html"]).then(function(responses){var context=instance.options.element;context.classList.add("tvguide"),context.innerHTML=_globalize.default.translateDocument(responses[0],"sharedcomponents"),_layoutmanager.default.tv?(context.querySelector(".btnGuideViewSettings-side").classList.remove("hide"),context.querySelector(".btnSelectDate-side").classList.remove("hide")):context.querySelector(".itemsViewSettingsContainer").classList.remove("hide"),instance.firstChannelCell=context.querySelector(".firstChannelCell"),instance.options.condensed&&instance.firstChannelCell.classList.add("channelCell-condensed"),_shortcuts.default.on(context),instance.onTimerCreatedFn=function(e,apiClient,data){for(var programId=data.ProgramId,newTimerId=data.Id,cells=this.options.element.querySelectorAll('.programCell[data-id="'+programId+'"]'),i=0,length=cells.length;i<length;i++){var cell=cells[i];cell.querySelector(".timerIcon")||cell.querySelector(".programCellInner").insertAdjacentHTML("beforeend",'<i class="timerIcon md-icon programIcon">&#xE061;</i>'),newTimerId&&cell.setAttribute("data-timerid",newTimerId)}}.bind(instance),_events.default.on(_api.default,"TimerCreated",instance.onTimerCreatedFn),instance.onSeriesTimerCreatedFn=function(e,apiClient,data){}.bind(instance),_events.default.on(_api.default,"SeriesTimerCreated",instance.onSeriesTimerCreatedFn),instance.onTimerCancelledFn=function(e,apiClient,data){for(var options=this.options,id=data.Id,cells=options.element.querySelectorAll('.programCell[data-timerid="'+id+'"]'),i=0,length=cells.length;i<length;i++){var cell=cells[i],icon=cell.querySelector(".timerIcon");icon&&icon.parentNode.removeChild(icon),cell.removeAttribute("data-timerid")}}.bind(instance),_events.default.on(_api.default,"TimerCancelled",instance.onTimerCancelledFn),instance.onSeriesTimerCancelledFn=function(e,apiClient,data){for(var options=this.options,id=data.Id,cells=options.element.querySelectorAll('.programCell[data-seriestimerid="'+id+'"]'),i=0,length=cells.length;i<length;i++){var cell=cells[i],icon=cell.querySelector(".seriesTimerIcon");icon&&icon.parentNode.removeChild(icon),cell.removeAttribute("data-seriestimerid")}}.bind(instance),_events.default.on(_api.default,"SeriesTimerCancelled",instance.onSeriesTimerCancelledFn),instance.scroller=instance.options.element.querySelector(".virtualScrollerScrollContainer"),instance.headerScroller=instance.options.element.querySelector(".headerScroller"),instance.uniqueId=startId,instance.scrollSliderUniqueClass="epgScrollSlider"+startId,instance.scroller.classList.add("epgVirtualScrollerScrollContainer-both"),bindScrollEventOnUpgrade.call(instance);var itemsContainer=context.querySelector(".itemsContainer");itemsContainer.fetchData=instance.getItems.bind(instance),itemsContainer.afterRefresh=function(){var cssClass="guide-currentTimeIndicatorDot guideEpg-currentTimeIndicatorDot hide";this.options.condensed&&(cssClass+=" guide-currentTimeIndicatorDot-condensed"),this.itemsContainer.virtualScroller.insertAdjacentHTML("afterbegin",'<div class="'+cssClass+'"></div>'),this.currentTimeIndicatorDots=this.options.element.querySelectorAll(".guide-currentTimeIndicatorDot"),this.startCurrentTimeUpdateInterval()}.bind(instance),itemsContainer.virtualChunkSize=25,itemsContainer.getListOptions=instance.getListOptions.bind(instance),(instance.itemsContainer=itemsContainer).onUpdateElement=function(row,item,index){(item.RowElement=row).Programs=item.Programs.slice(0),row.ProgramMap=getProgramMap(row),this.itemsContainer.itemParts[index]=null,onScroll.call(this,{target:this.scroller,currentTarget:this.scroller,updateProgramTextRow:row,forceHorizontalChange:!0})}.bind(instance),itemsContainer.onRecycleElement=function(row,index){row.ProgramMap=null;var item=this.itemsContainer.getItem(index);item&&(item.RowElement=null)}.bind(instance),instance.channelCellResizeObserver=new ResizeObserver(function(entries){var entry=entries[0];entry&&(entry.contentRect,this.channelCellWidth=null)}.bind(instance),{}),instance.channelCellResizeObserver.observe(instance.firstChannelCell),instance.channelCellResizeObserver.observe(instance.scroller);for(var settingsButtons=context.querySelectorAll(".btnGuideViewSettings"),i=0,length=settingsButtons.length;i<length;i++)settingsButtons[i].addEventListener("click",onSettingsButtonClick.bind(instance));var dateButtons=context.querySelectorAll(".btnSelectDate");for(i=0,length=dateButtons.length;i<length;i++)dateButtons[i].addEventListener("click",onDateButtonClick.bind(instance));_layoutmanager.default.tv&&_dom.default.addEventListener(instance.scroller,"focus",onFocusInScroller.bind(instance),{capture:!0,passive:!0}),instance.btnLiveGuide=instance.options.element.querySelector(".btnLiveGuide"),_dom.default.addEventListener(instance.btnLiveGuide,"click",onLiveButtonClick.bind(instance),{capture:!0,passive:!0}),instance.styleElementUniqueClass="guideStyle"+startId;var scrollSliders=context.querySelectorAll(".epgScrollSlider");scrollSliders[0].classList.add(instance.scrollSliderUniqueClass),scrollSliders[1].classList.add(instance.scrollSliderUniqueClass),startId++}))}function Guide(options){this.options=options,this.categoryOptions={categories:[]},this.boundLoadPrograms=function(){for(var channelCellWidth,scrollWidth,offsetWidth,timeBlockStart,originalScrollLeft,timeblocks,scrollLeft,activeItems=this.itemsContainer.virtualScroller.getActiveItems(),elements=activeItems.elements,channelIdsNeedingData=[],epgRowMap={},numActiveRows=Math.min(elements.length,activeItems.lastIndex-activeItems.firstIndex+1),i=0;i<numActiveRows;i++){elements[i];var channelId,itemIndex=activeItems.firstIndex+i,item=this.itemsContainer.getItem(itemIndex);item&&(epgRowMap[channelId=item.Channel.Id]=item,channelIdsNeedingData.push(channelId))}channelIdsNeedingData.length&&(scrollLeft=this._loadDataInfo,channelCellWidth=getChannelCellWidth(this),scrollWidth=this.scroller.getScrollWidth()-channelCellWidth,offsetWidth=this.scroller.getScrollContainerBoundingClientRect().width,timeblocks=[],scrollLeft=originalScrollLeft=scrollLeft,scrollLeft=Math.min(scrollLeft,scrollWidth),scrollLeft=Math.max(scrollLeft,0),timeBlockStart=getTimeBlockStart(this,scrollLeft,scrollWidth),-1===timeblocks.indexOf(timeBlockStart)&&(loadPrograms(this,epgRowMap,channelIdsNeedingData,timeBlockStart),timeblocks.push(timeBlockStart)),scrollLeft=originalScrollLeft,scrollLeft-=offsetWidth,scrollLeft=Math.min(scrollLeft,scrollWidth),scrollLeft=Math.max(scrollLeft,0),timeBlockStart=getTimeBlockStart(this,scrollLeft,scrollWidth),-1===timeblocks.indexOf(timeBlockStart)&&(loadPrograms(this,epgRowMap,channelIdsNeedingData,timeBlockStart),timeblocks.push(timeBlockStart)),scrollLeft=originalScrollLeft,scrollLeft+=offsetWidth,scrollLeft=Math.min(scrollLeft,scrollWidth),scrollLeft=Math.max(scrollLeft,0),timeBlockStart=getTimeBlockStart(this,scrollLeft,scrollWidth),-1===timeblocks.indexOf(timeBlockStart)&&(loadPrograms(this,epgRowMap,channelIdsNeedingData,timeBlockStart),timeblocks.push(timeBlockStart)))}.bind(this),this.lastScrollTop=0,this.lastScrollLeft=0}function getDisplayTime(date){if("string"===(typeof date).toString().toLowerCase())try{date=_datetime.default.parseISO8601Date(date,{toLocal:!0})}catch(err){return date}return _datetime.default.getDisplayTime(date)}function renderWidthCss(instance){instance.scrollSliderUniqueClass;var originalString,strReplace,strWith,strReplace2,reg,numCells=Math.ceil((instance._endDateMs-instance._startDateMs)/cellDurationMs),html="\n.epgScrollSlider {\n        width: "+(37.5*numCells+7)+"vw;\n}\n\n@media all and (min-width: 37.5em) {\n\n    .epgScrollSlider {\n        width: "+(29.167*numCells+7)+"vw;\n    }\n}\n\n@media all and (min-width: 50em) {\n\n    .epgScrollSlider {\n        width: "+(25*numCells+8)+"vw;\n    }\n}\n\n@media all and (min-width: 80em) {\n\n    .epgScrollSlider {\n        width: "+(16.66667*numCells+10)+"vw;\n    }\n}\n    ";originalString=html,strReplace="epgScrollSlider",strWith=instance.scrollSliderUniqueClass,strReplace2=strReplace.replace(/([.*+?^=!:${}()|\[\]\/\\])/g,"\\$1"),reg=new RegExp(strReplace2,"ig"),html=originalString.replace(reg,strWith);var elem=document.querySelector("."+instance.styleElementUniqueClass);elem?elem.innerHTML=html:((elem=document.createElement("style")).innerHTML=html,document.head.appendChild(elem))}function onGetGuideInfo(guideInfo){_datetime.default.parseISO8601Date(guideInfo.StartDate,{toLocal:!0});var end=_datetime.default.parseISO8601Date(guideInfo.EndDate,{toLocal:!0}),today=new Date,nowHours=today.getHours(),nowMinutes=30<=today.getMinutes()?30:0,date=new Date;date.setHours(nowHours,nowMinutes,0,0),_loading.default.show();var startDate=this._startDateMs=normalizeDateToTimeslot(date.getTime()),endDate=this._endDateMs=normalizeDateToTimeslot(end.getTime(),!0);return renderWidthCss(this),this.options.element.querySelector(".timeslotHeaders").innerHTML=function(originalStartDateMs,endDateTimeMs){for(var startDate=new Date(originalStartDateMs),numSlots=0;startDate.getTime()<endDateTimeMs;)numSlots++,startDate.setTime(startDate.getTime()+cellDurationMs);var width=100/numSlots,startDate=new Date(originalStartDateMs),html="";for(html+='<div class="guide-currentTimeIndicatorDot guideHeader-currentTimeIndicatorDot"></div>';startDate.getTime()<endDateTimeMs;)html+='<div class="timeslotHeader" style="width:'+width+'%;">',html+=getDisplayTime(startDate),html+="</div>",startDate.setTime(startDate.getTime()+cellDurationMs);return html}(startDate,endDate),this.updateDateButtonText(this.scroller.getScrollLeft()),this.options.element.querySelector(".btnSelectDate").classList.remove("hide"),this.itemsContainer.resume({refresh:!0}).then(function(){_loading.default.hide()})}var dateLocalOptions={weekday:"short",month:"short",day:"numeric"};function hideOrShow(elem,hide){!0===elem._showing?hide&&(elem.classList.add("hide"),elem._showing=!1):hide||(elem.classList.remove("hide"),elem._showing=!0)}function getProgramMap(epgItem){for(var programMap={},items=epgItem.Programs,i=0,length=items.length;i<length;i++){var item=items[i];programMap[item.Id]=item}return programMap}Guide.prototype.updateDateButtonText=function(scrollLeft,scrollWidth){null==scrollWidth&&(scrollWidth=this.scroller.getScrollWidth());var startDate=this._startDateMs,currentPositionMs=scrollLeft/scrollWidth*(this._endDateMs-startDate);currentPositionMs+=startDate;var date=new Date(currentPositionMs);(this.btnDateText||(this.btnDateText=this.options.element.querySelector(_layoutmanager.default.tv?".btnDateText-side":".btnDateText-main"))).innerHTML=_datetime.default.toLocaleDateString(date,dateLocalOptions);var btnLiveGuide=this.btnLiveGuide;!_layoutmanager.default.tv&&Math.abs(currentPositionMs-Date.now())>cellDurationMs?hideOrShow(btnLiveGuide,!1):hideOrShow(btnLiveGuide,!0)},Guide.prototype.stopCurrentTimeUpdateInterval=function(){var interval=this.currentTimeUpdateInterval;interval&&(clearInterval(interval),this.currentTimeUpdateInterval=null)},Guide.prototype.startCurrentTimeUpdateInterval=function(){var interval=this.currentTimeUpdateInterval,fn=function(){var dots=this.currentTimeIndicatorDots,startDateMs=this._startDateMs,endDate=this._endDateMs,now=Date.now(),pct=startDateMs&&endDate?(now-startDateMs)/(endDate-startDateMs)*100:-100,showIndicator=0<=pct&&pct<=100;pct=pct.toFixed(2)+"%";for(var displayTime=getDisplayTime(new Date(now)),i=0,length=dots.length;i<length;i++){var dot=dots[i];dot.style.left=pct,dot.setAttribute("aria-label",displayTime),dot.title=displayTime,showIndicator?dot.classList.remove("hide"):dot.classList.add("hide")}}.bind(this);interval||(this.currentTimeUpdateInterval=setInterval(fn,4e4)),setTimeout(fn,200)},Guide.prototype.pause=function(){this.stopCurrentTimeUpdateInterval()},Guide.prototype.resume=function(options){var instance=this;return initialRender(instance).then(function(){if(options&&options.refresh)return instance.refresh().then(function(instance,options){return function(){options&&options.autoFocus&&setTimeout(function(){_focusmanager.default.autoFocus(instance.itemsContainer)},_layoutmanager.default.tv?500:100)}}(instance,options));var itemsContainer=instance.itemsContainer;return itemsContainer?itemsContainer.resume(options).then(function(){instance.startCurrentTimeUpdateInterval(),onLiveButtonClick.call(instance)}):Promise.resolve()})},Guide.prototype.refresh=function(){this.cancelDataLoadTimer();return _connectionmanager.default.getApiClient(this.options.serverId).getLiveTvGuideInfo().then(onGetGuideInfo.bind(this))},Guide.prototype.getItems=function(query){var options=this.options,apiClient=_connectionmanager.default.getApiClient(options.serverId),endDate=this._startDateMs+msPerPage,maxEndDate=this._endDateMs-2e3,endDate=Math.min(endDate,maxEndDate),epgQuery=Object.assign({Fields:"PrimaryImageAspectRatio",Limit:25,MaxStartDate:new Date(endDate).toISOString(),MinEndDate:new Date(this._startDateMs+1e3).toISOString(),ProgramFields:getProgramFieldsProperty(),TagIds:_usersettings.default.get("guide-tagids")||null},query||{}),categories=this.categoryOptions.categories||[],displayMovieContent=!categories.length||-1!==categories.indexOf("movies"),displaySportsContent=!categories.length||-1!==categories.indexOf("sports"),displayNewsContent=!categories.length||-1!==categories.indexOf("news"),displayKidsContent=!categories.length||-1!==categories.indexOf("kids"),displaySeriesContent=!categories.length||-1!==categories.indexOf("series");return displayMovieContent&&displaySportsContent&&displayNewsContent&&displayKidsContent?(epgQuery.IsMovie=null,epgQuery.IsSports=null,epgQuery.IsKids=null,epgQuery.IsNews=null,epgQuery.IsSeries=null):(displayNewsContent&&(epgQuery.IsNews=!0),displaySportsContent&&(epgQuery.IsSports=!0),displayKidsContent&&(epgQuery.IsKids=!0),displayMovieContent&&(epgQuery.IsMovie=!0),displaySeriesContent&&(epgQuery.IsSeries=!0)),_usersettings.default.addLiveTvChannelSortingToQuery(epgQuery,_globalize.default),apiClient.getEpg(epgQuery).then(function(result){for(var items=result.Items,i=(getTimeBlockStart(this,0).toString(),0),length=items.length;i<length;i++){var epgRow=items[i];epgRow.ChannelId=epgRow.Channel.Id,epgRow.ProgramMap=getProgramMap(epgRow)}return result}.bind(this))},Guide.prototype.startDataLoadTimer=function(loadDataInfo){this.cancelDataLoadTimer(),this._loadDataInfo=loadDataInfo,this.getProgramsTimeout=setTimeout(this.boundLoadPrograms,100)},Guide.prototype.cancelDataLoadTimer=function(){var timeout=this.getProgramsTimeout;timeout&&(clearTimeout(timeout),this.getProgramsTimeout=null,this._loadDataInfo=null)},Guide.prototype.getListOptions=function(items){var programRenderOptions={categories:this.categoryOptions.categories,startDateMs:this._startDateMs,endDateMs:this._endDateMs},renderer=new _gridrowrenderer.default({condensed:this.options.condensed});return renderer.setListOptions([],programRenderOptions),this.programRenderOptions=programRenderOptions,{renderer:renderer,options:{categories:this.categoryOptions.categories,startDateMs:this._startDateMs,endDateMs:this._endDateMs,channelAction:this.options.channelAction||"link"},virtualScrollLayout:"vertical-grid"}},Guide.prototype.destroy=function(){this.cancelDataLoadTimer();var context,onTimerCreatedFn,onSeriesTimerCreatedFn,onTimerCancelledFn,onSeriesTimerCancelledFn,channelCellResizeObserver,options=this.options;this.stopCurrentTimeUpdateInterval(),options&&(context=options.element,_shortcuts.default.off(context),(onTimerCreatedFn=this.onTimerCreatedFn)&&(_events.default.off(_api.default,"TimerCreated",onTimerCreatedFn),this.onTimerCreatedFn=null),(onSeriesTimerCreatedFn=this.onSeriesTimerCreatedFn)&&(_events.default.off(_api.default,"SeriesTimerCreated",onSeriesTimerCreatedFn),this.onSeriesTimerCreatedFn=null),(onTimerCancelledFn=this.onTimerCancelledFn)&&(_events.default.off(_api.default,"TimerCancelled",onTimerCancelledFn),this.onTimerCancelledFn=null),(onSeriesTimerCancelledFn=this.onSeriesTimerCancelledFn)&&(_events.default.off(_api.default,"SeriesTimerCancelled",onSeriesTimerCancelledFn),this.onSeriesTimerCancelledFn=null),(channelCellResizeObserver=this.channelCellResizeObserver)&&(channelCellResizeObserver.disconnect(),this.channelCellResizeObserver=null),this.itemsContainer=null,this.currentTimeIndicatorDot=null,this.scroller=null,this.headerScroller=null,this.firstChannelCell=null,this.options=null,this._endDateMs=null,this._startDateMs=null,this.channelCellWidth=null,this.programCache=null,this.btnDateText=null,this.btnLiveGuide=null)},_exports.default=Guide});