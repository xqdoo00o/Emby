define(["events","listView","dom","serverNotifications","connectionManager","emby-button"],function(events,listView,dom,serverNotifications,connectionManager){"use strict";function getActivityLogItemsHtml(items){return listView.getItemsHtml(items,{showDate:!0,action:"none",showShortOverview:!0,enableDefaultIcon:!0,overviewButton:!0,roundImage:!0,multiSelect:!1,contextMenu:!1})}function ActivityLog(options){var element=(this.options=options).element;element.fetchData=function(){var limit=parseInt(this.getAttribute("data-activitylimit")||"7"),minDate=new Date;minDate.setTime(minDate.getTime()-6048e5);var hasUserId="false"!==this.getAttribute("data-useractivity");return ApiClient.getActivityLog({StartIndex:0,Limit:limit,MinDate:minDate.toISOString(),hasUserId:hasUserId})}.bind(element),element.getItemsHtml=getActivityLogItemsHtml,element.parentContainer=element.closest(".activityContainer"),element.setAttribute("data-alwaysshowseeall","true");var apiClient=connectionManager.getApiClient(options.serverId),onUpdate=function(e,apiClient,data){var options=this.options;options&&options.serverId===apiClient.serverId()&&options.element.notifyRefreshNeeded()}.bind(this);this.updateFn=onUpdate,events.on(serverNotifications,"ActivityLogEntry",onUpdate),apiClient.startMessageListener("ActivityLogEntry","0,1500"),element.resume({refresh:!0})}return ActivityLog.prototype.pause=function(){},ActivityLog.prototype.resume=function(options){},ActivityLog.prototype.destroy=function(){var options=this.options;options&&(options.element,connectionManager.getApiClient(options.serverId).stopMessageListener("ActivityLogEntry"));var onUpdate=this.updateFn;onUpdate&&events.off(serverNotifications,"ActivityLogEntry",onUpdate),this.items=null,this.options=null},ActivityLog});