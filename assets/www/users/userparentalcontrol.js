define(["dom","datetime","loading","appRouter","globalize","listViewStyle","paper-icon-button-light","emby-linkbutton","emby-checkbox","emby-button","emby-select"],function(dom,datetime,loading,appRouter,globalize){"use strict";function loadUser(instance,page,user,allParentalRatings){page.querySelector(".username").innerHTML=user.Name,appRouter.setTitle(user.Name),function(page,user){var items=[{name:globalize.translate("Books"),value:"Book"},{name:globalize.translate("Games"),value:"Game"},{name:globalize.translate("OptionBlockChannelContent"),value:"ChannelContent"},{name:globalize.translate("OptionBlockLiveTvChannels"),value:"LiveTvChannel"},{name:globalize.translate("Movies"),value:"Movie"},{name:globalize.translate("Music"),value:"Music"},{name:globalize.translate("Trailers"),value:"Trailer"},{name:globalize.translate("TVShows"),value:"Series"}],html="";html+='<h3 class="checkboxListLabel">'+globalize.translate("HeaderBlockItemsWithNoRating")+"</h3>",html+='<div class="checkboxList">';for(var i=0,length=items.length;i<length;i++){var item=items[i],checkedAttribute=-1!==user.Policy.BlockUnratedItems.indexOf(item.value)?' checked="checked"':"";html+='<label><input type="checkbox" is="emby-checkbox" class="chkUnratedItem" data-itemtype="'+item.value+'" type="checkbox"'+checkedAttribute+"><span>"+item.name+"</span></label>"}html+="</div>",page.querySelector(".blockUnratedItems").innerHTML=html}(page,user),instance.tags=user.Policy.BlockedTags,loadBlockedTags(page,instance.tags),function(allParentalRatings,page){var html="";html+="<option value=''></option>";for(var rating,ratings=[],i=0,length=allParentalRatings.length;i<length;i++){if(rating=allParentalRatings[i],ratings.length){var lastRating=ratings[ratings.length-1];if(lastRating.Value===rating.Value){lastRating.Name+="/"+rating.Name;continue}}ratings.push({Name:rating.Name,Value:rating.Value})}for(i=0,length=ratings.length;i<length;i++)html+="<option value='"+(rating=ratings[i]).Value+"'>"+rating.Name+"</option>";page.querySelector(".selectMaxParentalRating").innerHTML=html}(allParentalRatings,page);var ratingValue="";if(user.Policy.MaxParentalRating)for(var i=0,length=allParentalRatings.length;i<length;i++){var rating=allParentalRatings[i];user.Policy.MaxParentalRating>=rating.Value&&(ratingValue=rating.Value)}page.querySelector(".selectMaxParentalRating").value=ratingValue,page.querySelector(".selectTagMode").value=user.Policy.IsTagBlockingModeInclusive?"include":"",user.Policy.IsAdministrator?page.querySelector(".accessScheduleSection").classList.add("hide"):page.querySelector(".accessScheduleSection").classList.remove("hide"),instance.schedules=user.Policy.AccessSchedules||[],renderAccessSchedule(page,instance.schedules),loading.hide()}function loadBlockedTags(page,tags){var html=(html=tags.map(function(h){var li='<div class="listItem listItem-border">';return li+='<div class="listItemBody">',li+='<div class="listItemBodyText">',li+=h,li+="</div>",li+="</div>",li+='<button type="button" is="paper-icon-button-light" class="blockedTag btnDeleteTag listItemButton" data-tag="'+h+'"><i class="md-icon">delete</i></button>',li+="</div>"}).join(""))&&"<div>"+html+"</div>";page.querySelector(".blockedTags").innerHTML=html}function renderAccessSchedule(page,schedules){var html="",index=0;html+=schedules.map(function(a){var itemHtml="";return itemHtml+='<div class="liSchedule listItem listItem-border" data-day="'+a.DayOfWeek+'" data-start="'+a.StartHour+'" data-end="'+a.EndHour+'">',itemHtml+='<div class="listItemBody two-line">',itemHtml+='<div class="listItemBodyText">',itemHtml+=globalize.translate("Option"+a.DayOfWeek),itemHtml+="</div>",itemHtml+='<div class="listItemBodyText secondary">'+getDisplayTime(a.StartHour)+" - "+getDisplayTime(a.EndHour)+"</div>",itemHtml+="</div>",itemHtml+='<button type="button" is="paper-icon-button-light" class="btnDeleteAccessScheduleItem listItemButton" data-index="'+index+'"><i class="md-icon">delete</i></button>',index++,itemHtml+="</div>"}).join(""),page.querySelector(".accessScheduleList").innerHTML=html}function saveUser(user,page){user.Policy.MaxParentalRating=page.querySelector(".selectMaxParentalRating").value||null,user.Policy.IsTagBlockingModeInclusive="include"===page.querySelector(".selectTagMode").value,user.Policy.BlockUnratedItems=Array.prototype.filter.call(page.querySelectorAll(".chkUnratedItem"),function(i){return i.checked}).map(function(i){return i.getAttribute("data-itemtype")}),user.Policy.AccessSchedules=getSchedulesFromPage(page),user.Policy.BlockedTags=function(page){return Array.prototype.map.call(page.querySelectorAll(".blockedTag"),function(elem){return elem.getAttribute("data-tag")})}(page),ApiClient.updateUserPolicy(user.Id,user.Policy).then(function(){loading.hide(),require(["toast"],function(toast){toast(globalize.translate("SettingsSaved"))})})}function getDisplayTime(hours){var minutes=0,pct=hours%1;return pct&&(minutes=parseInt(60*pct)),datetime.getDisplayTime(new Date(2e3,1,1,hours,minutes,0,0))}function getSchedulesFromPage(page){return Array.prototype.map.call(page.querySelectorAll(".liSchedule"),function(elem){return{DayOfWeek:elem.getAttribute("data-day"),StartHour:elem.getAttribute("data-start"),EndHour:elem.getAttribute("data-end")}})}return function(view,params){var page=view,self=this;view.querySelector(".btnAddSchedule").addEventListener("click",function(){!function(page,schedule,index){schedule=schedule||{},require(["components/accessschedule/accessschedule"],function(accessschedule){accessschedule.show({schedule:schedule}).then(function(updatedSchedule){var schedules=getSchedulesFromPage(page);-1===index&&(index=schedules.length),schedules[index]=updatedSchedule,renderAccessSchedule(page,schedules)})})}(page,{},-1)}),view.querySelector(".btnAddBlockedTag").addEventListener("click",function(){!function(instance,page){require(["prompt"],function(prompt){prompt({label:globalize.translate("LabelTag")}).then(function(value){var tags=instance.tags;-1===tags.indexOf(value)&&(tags.push(value),loadBlockedTags(page,tags))})})}(self,page)}),view.querySelector(".blockedTags").addEventListener("click",function(e){var tag,btnDeleteTag=e.target.closest(".btnDeleteTag");btnDeleteTag&&(tag=btnDeleteTag.getAttribute("data-tag"),self.tags=self.tags.filter(function(t){return t!==tag}),loadBlockedTags(view,self.tags))}),view.querySelector(".accessScheduleList").addEventListener("click",function(e){var instance,page,index,schedules;e.target.closest(".btnDeleteAccessScheduleItem")&&(instance=self,page=view,index=parseInt(this.getAttribute("data-index")),(schedules=instance.schedules).splice(index,1),renderAccessSchedule(page,schedules))}),view.querySelector(".userParentalControlForm").addEventListener("submit",function(e){var page=this.closest(".page");loading.show();var userId=params.userId;return ApiClient.getUser(userId).then(function(result){saveUser(result,page)}),e.preventDefault(),e.stopPropagation(),!1});for(var btns=page.querySelectorAll(".userEditTabButton"),i=0,length=btns.length;i<length;i++)btns[i].href=btns[i].getAttribute("data-href")+"?userId="+params.userId+"&serverId="+ApiClient.serverId();var tagModeHtml='<option value="" selected>'+globalize.translate("BlockItemsWithTheseTags")+"</option>";tagModeHtml+='<option value="include">'+globalize.translate("AllowItemsWithTheseTags")+"</option>",page.querySelector(".selectTagMode").innerHTML=tagModeHtml,view.addEventListener("viewshow",function(){var page=this;loading.show();var promise1=ApiClient.getUser(params.userId),promise2=ApiClient.getParentalRatings();Promise.all([promise1,promise2]).then(function(responses){loadUser(self,page,responses[0],responses[1])})})}});