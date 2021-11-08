define(["baseTab","cardBuilder","imageLoader","connectionManager","apphost","focusManager","datetime","globalize","emby-itemscontainer"],function(BaseTab,cardBuilder,imageLoader,connectionManager,appHost,focusManager,datetime,globalize){"use strict";function UpcomingTab(view,params){BaseTab.apply(this,arguments),this.view=view,this.params=params,this.apiClient=connectionManager.getApiClient(params.serverId)}return Object.assign(UpcomingTab.prototype,BaseTab.prototype),UpcomingTab.prototype.onResume=function(options){BaseTab.prototype.onResume.apply(this,arguments);var promises,parentId,view,apiClient=this.apiClient;options.refresh&&(promises=[],parentId=this.params.parentId,promises.push(apiClient.getUpcomingEpisodes({Limit:60,UserId:apiClient.getCurrentUserId(),ImageTypeLimit:1,EnableImageTypes:"Primary,Backdrop,Thumb",EnableTotalRecordCount:!1,parentId:parentId})),view=this.view,promises[0].then(function(result){return function(view,items){for(var groups=[],currentGroupName="",currentGroup=[],i=0,length=items.length;i<length;i++){var item=items[i],dateText="";if(item.PremiereDate)try{var premiereDate=datetime.parseISO8601Date(item.PremiereDate,!0),dateText=datetime.isRelativeDay(premiereDate,-1)?globalize.translate("Yesterday"):datetime.toLocaleDateString(premiereDate,{weekday:"long",month:"short",day:"numeric"})}catch(err){dateText=item.PremiereDate}dateText!==currentGroupName?(currentGroup.length&&groups.push({name:currentGroupName,items:currentGroup}),currentGroupName=dateText,currentGroup=[item]):currentGroup.push(item)}var group,html="";for(i=0,length=groups.length;i<length;i++)html+='<div class="verticalSection focusable" data-focusabletype="nearest">',html+='<h2 class="sectionTitle sectionTitle-cards padded-left">'+(group=groups[i]).name+"</h2>",html+='<div is="emby-scroller" class="padded-top-focusscale padded-bottom-focusscale" data-framesize="matchgrandparent" data-centerfocus="card" data-mousewheel="false">',html+='<div is="emby-itemscontainer" class="itemsContainer scrollSlider focuscontainer-x padded-left padded-right">',html+="</div>",html+="</div>",html+="</div>";var upcomingContainer=view.classList.contains("upcomingContainer")?view:view.querySelector(".upcomingContainer");upcomingContainer.innerHTML=html;var itemContainers=upcomingContainer.querySelectorAll(".itemsContainer");for(i=0,length=groups.length;i<length;i++)group=groups[i],cardBuilder.buildCards(group.items,{showLocationTypeIndicator:!1,shape:"backdrop",preferThumb:!0,lazy:!0,showDetailsMenu:!0,overlayText:!1,showParentTitle:!0,fields:["Name"],centerText:!0,missingIndicator:!1,multiSelect:!1,itemsContainer:itemContainers[i]})}(view,result.Items),Promise.resolve()}),Promise.all(promises).then(function(){options.autoFocus&&focusManager.autoFocus(view)}))},UpcomingTab.prototype.onPause=function(){BaseTab.prototype.onPause.apply(this,arguments)},UpcomingTab.prototype.destroy=function(){BaseTab.prototype.destroy.apply(this,arguments),this.view=null,this.params=null,this.apiClient=null},UpcomingTab});