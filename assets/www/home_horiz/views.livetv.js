define(["focusManager","cardBuilder","appRouter","dom","globalize","emby-itemscontainer"],function(focusManager,cardBuilder,appRouter,dom,globalize){"use strict";function getListOptions(items,overlayButton,cardOptions){return cardOptions=cardOptions||{},(cardOptions=Object.assign({preferThumb:"auto",inheritThumb:!1,shape:"auto",defaultShape:"backdrop",showParentTitle:!0,centerText:!0,overlayText:!1,lazy:!0,overlayPlayButton:"play"===overlayButton,showAirTime:!0,showAirDateTime:!0,rows:{portrait:2,square:3,backdrop:3,fourThree:3},multiSelect:!1},cardOptions)).fields=[],cardOptions.showParentTitle=!1,cardOptions.showAirTime=!1,{renderer:cardBuilder,options:cardOptions,virtualScrollLayout:"vertical-grid"}}return function(element,apiClient,parentId){this.apiClient=apiClient;var view=element;this.latestItemsContainer=element.querySelector(".latestSection .itemsContainer"),this.latestItemsContainer.fetchData=function(){var apiClient=this.apiClient;return apiClient.getLiveTvRecordings({Limit:6,UserId:apiClient.getCurrentUserId(),ImageTypeLimit:1,Fields:"PrimaryImageAspectRatio,ProductionYear,CommunityRating"})}.bind(this),this.latestItemsContainer.getListOptions=function(){return{renderer:cardBuilder,options:{shape:"auto",preferThumb:"auto",fields:["ParentNameOrName"],rows:{portrait:2,square:3,backdrop:3,fourThree:3},overlayText:!0,multiSelect:!1},virtualScrollLayout:"vertical-grid"}}.bind(this),this.latestItemsContainer.parentContainer=this.latestItemsContainer.closest(".horizontalSection"),this.onNowItemsContainer=view.querySelector(".activePrograms .itemsContainer"),this.onNowItemsContainer.fetchData=function(){var apiClient=this.apiClient;return apiClient.getLiveTvRecommendedPrograms({UserId:apiClient.getCurrentUserId(),IsAiring:!0,Limit:12,ImageTypeLimit:1,EnableImageTypes:"Primary,Thumb,Backdrop",EnableTotalRecordCount:!1,Fields:"ChannelInfo,PrimaryImageAspectRatio,ProductionYear,CommunityRating"})}.bind(this),this.onNowItemsContainer.getListOptions=function(items){return getListOptions(0,"play")}.bind(this),this.onNowItemsContainer.parentContainer=this.onNowItemsContainer.closest(".horizontalSection"),this.episodeItemsContainer=view.querySelector(".upcomingEpisodes .itemsContainer"),this.episodeItemsContainer.fetchData=function(){var apiClient=this.apiClient;return apiClient.getLiveTvRecommendedPrograms({UserId:apiClient.getCurrentUserId(),HasAired:!1,IsAiring:!1,Limit:12,IsMovie:!1,IsSports:!1,IsKids:!1,IsNews:!1,IsSeries:!0,EnableTotalRecordCount:!1,Fields:"ChannelInfo,PrimaryImageAspectRatio,ProductionYear,CommunityRating",EnableImageTypes:"Primary,Thumb"})}.bind(this),this.episodeItemsContainer.getListOptions=function(items){return getListOptions()}.bind(this),this.episodeItemsContainer.parentContainer=this.episodeItemsContainer.closest(".horizontalSection"),this.movieItemsContainer=view.querySelector(".upcomingTvMovies .itemsContainer"),this.movieItemsContainer.fetchData=function(){var apiClient=this.apiClient;return apiClient.getLiveTvRecommendedPrograms({userId:apiClient.getCurrentUserId(),HasAired:!1,IsAiring:!1,Limit:12,IsMovie:!0,EnableTotalRecordCount:!1,Fields:"ChannelInfo,PrimaryImageAspectRatio,ProductionYear,CommunityRating",EnableImageTypes:"Primary,Thumb"})}.bind(this),this.movieItemsContainer.getListOptions=function(items){return getListOptions(0,null,{shape:"portrait",preferThumb:null})}.bind(this),this.movieItemsContainer.parentContainer=this.movieItemsContainer.closest(".horizontalSection"),this.sportsItemsContainer=view.querySelector(".upcomingSports .itemsContainer"),this.sportsItemsContainer.fetchData=function(){var apiClient=this.apiClient;return apiClient.getLiveTvRecommendedPrograms({userId:apiClient.getCurrentUserId(),HasAired:!1,IsAiring:!1,Limit:12,IsSports:!0,EnableTotalRecordCount:!1,Fields:"ChannelInfo,PrimaryImageAspectRatio,ProductionYear,CommunityRating",EnableImageTypes:"Primary,Thumb"})}.bind(this),this.sportsItemsContainer.getListOptions=function(items){return getListOptions(0,null,{})}.bind(this),this.sportsItemsContainer.parentContainer=this.sportsItemsContainer.closest(".horizontalSection"),this.kidsItemsContainer=view.querySelector(".upcomingKids .itemsContainer"),this.kidsItemsContainer.fetchData=function(){var apiClient=this.apiClient;return apiClient.getLiveTvRecommendedPrograms({userId:apiClient.getCurrentUserId(),HasAired:!1,IsAiring:!1,Limit:12,IsKids:!0,EnableTotalRecordCount:!1,Fields:"ChannelInfo,PrimaryImageAspectRatio,ProductionYear,CommunityRating",EnableImageTypes:"Primary,Thumb"})}.bind(this),this.kidsItemsContainer.getListOptions=function(items){return getListOptions(0,null,{})}.bind(this),this.kidsItemsContainer.parentContainer=this.kidsItemsContainer.closest(".horizontalSection"),this.newsItemsContainer=view.querySelector(".upcomingNews .itemsContainer"),this.newsItemsContainer.fetchData=function(){var apiClient=this.apiClient;return apiClient.getLiveTvRecommendedPrograms({userId:apiClient.getCurrentUserId(),HasAired:!1,IsAiring:!1,Limit:12,IsNews:!0,EnableTotalRecordCount:!1,Fields:"ChannelInfo,PrimaryImageAspectRatio,ProductionYear,CommunityRating",EnableImageTypes:"Primary,Thumb"})}.bind(this),this.newsItemsContainer.getListOptions=function(items){return getListOptions(0,null,{})}.bind(this),this.newsItemsContainer.parentContainer=this.newsItemsContainer.closest(".horizontalSection"),this.categoryItemsContainer=element.querySelector(".categoryItemsContainer"),this.categoryItemsContainer.fetchData=function(){var apiClient=this.apiClient,items=[];return items.push({Name:globalize.translate("Channels"),Id:"livetv_channels",ServerId:apiClient.serverId(),Icon:"&#xE5D2;",IsCategory:!0}),items.push({Name:globalize.translate("Guide"),Id:"livetv_guide",ServerId:apiClient.serverId(),Icon:"dvr",IsCategory:!0}),items.push({Name:globalize.translate("Recordings"),Id:"livetv_recordings",ServerId:apiClient.serverId(),Icon:"&#xE63A;",IsCategory:!0}),Promise.resolve({Items:items,TotalRecordCount:items.length})}.bind(this),this.categoryItemsContainer.getListOptions=function(){return{renderer:cardBuilder,options:{shape:"square",multiSelect:!1,contextMenu:!1,overlayText:!0,fields:["Name"],action:"custom"},virtualScrollLayout:"vertical-grid"}}.bind(this),this.categoryItemsContainer.addEventListener("action-null",function(e){var item=e.detail.item,tab=item.Id.split("_")[1];appRouter.show("/livetv?tab="+tab+"&serverId="+item.ServerId)}.bind(this)),this.resume=function(options){var promises=[];return promises.push(this.categoryItemsContainer.resume(options).then(function(){return options.autoFocus&&focusManager.autoFocus(element),Promise.resolve()})),promises.push(this.latestItemsContainer.resume(options)),promises.push(this.onNowItemsContainer.resume(options)),promises.push(this.episodeItemsContainer.resume(options)),promises.push(this.movieItemsContainer.resume(options)),promises.push(this.sportsItemsContainer.resume(options)),promises.push(this.kidsItemsContainer.resume(options)),promises.push(this.newsItemsContainer.resume(options)),Promise.all(promises)},this.pause=function(){this.categoryItemsContainer.pause(),this.latestItemsContainer.pause(),this.onNowItemsContainer.pause(),this.episodeItemsContainer.pause(),this.movieItemsContainer.pause(),this.sportsItemsContainer.pause(),this.kidsItemsContainer.pause(),this.newsItemsContainer.pause()},this.destroy=function(){this.apiClient=null,this.categoryItemsContainer=null,this.latestItemsContainer=null,this.onNowItemsContainer=null,this.episodeItemsContainer=null,this.movieItemsContainer=null,this.sportsItemsContainer=null,this.kidsItemsContainer=null,this.newsItemsContainer=null}}});