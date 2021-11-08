define(["cardBuilder","globalize","emby-itemscontainer"],function(cardBuilder,globalize){"use strict";function loadChannels(element,parentId,apiClient,autoFocus){return apiClient.getChannels({UserId:apiClient.getCurrentUserId(),Fields:"PrimaryImageAspectRatio",ImageTypeLimit:1}).then(function(result){var section=element.querySelector(".channelsSection");if(section){cardBuilder.buildCards(result.Items,{parentContainer:section,itemsContainer:section.querySelector(".itemsContainer"),shape:"backdrop",rows:3,preferThumb:!0,autoFocus:autoFocus,scalable:!1,multiSelect:!1});var latestContainer=element.querySelector(".latestContainer");return latestContainer.innerHTML="",Promise.all(result.Items.map(function(i){return function(element,channel,apiClient){var html='<div class="sectionTitle">'+globalize.translate("LatestFromValue",channel.Name)+'</div><div is="emby-itemscontainer" class="itemsContainer"></div>',section=document.createElement("div");section.classList.add("hide"),section.classList.add("horizontalSection"),section.innerHTML=html,element.appendChild(section);var options={Limit:6,ChannelIds:channel.Id,UserId:apiClient.getCurrentUserId(),Filters:"IsUnplayed",Fields:"PrimaryImageAspectRatio,ProductionYear,CommunityRating",ImageTypeLimit:1};return apiClient.getLatestChannelItems(options).then(function(result){cardBuilder.buildCards(result.Items,{parentContainer:section,itemsContainer:section.querySelector(".itemsContainer"),shape:"auto",fields:[],rows:{portrait:2,square:3,backdrop:3,fourThree:3},scalable:!1,multiSelect:!1})})}(latestContainer,i,apiClient)}))}})}return function(element,apiClient,parentId){this.resume=function(options){return loadChannels(element,0,apiClient,options.autoFocus)},this.pause=function(){},this.destroy=function(){}}});