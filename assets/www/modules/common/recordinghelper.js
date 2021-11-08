define(["exports","./../emby-apiclient/connectionmanager.js","./../loading/loading.js","./globalize.js"],function(_exports,_connectionmanager,_loading,_globalize){function getRequirePromise(dep){return new Promise(function(resolve,reject){require(dep,resolve)})}function sendToast(options){return getRequirePromise(["toast"]).then(function(toast){return toast(options)})}function changeRecordingToSeries(apiClient,timerId,programId,confirmTimerCancellation){return _loading.default.show(),apiClient.getItem(apiClient.getCurrentUserId(),programId).then(function(item){return item.IsSeries?apiClient.getNewLiveTvTimerDefaults({programId:programId}).then(function(timerDefaults){return apiClient.createLiveTvSeriesTimer(timerDefaults).then(function(){_loading.default.hide(),sendToast(_globalize.default.translate("SeriesRecordingScheduled"))})}):confirmTimerCancellation?cancelTimerWithConfirmation(timerId,apiClient.serverId()):cancelTimer(apiClient.serverId(),timerId,!0)})}function cancelTimerWithConfirmation(timerId,serverId){return getRequirePromise(["confirm"]).then(function(confirm){return confirm({text:_globalize.default.translate("MessageConfirmRecordingCancellation"),primary:"cancel",confirmText:_globalize.default.translate("HeaderCancelRecording"),cancelText:_globalize.default.translate("HeaderKeepRecording")}).then(function(){return _loading.default.show(),cancelTimer(_connectionmanager.default.getApiClient(serverId),timerId,!0)})})}function cancelTimer(apiClient,timerId,hideLoading){return _loading.default.show(),apiClient.cancelLiveTvTimer(timerId).then(function(){!1!==hideLoading&&(_loading.default.hide(),sendToast(_globalize.default.translate("RecordingCancelled")))})}function createRecording(apiClient,programId,isSeries){return _loading.default.show(),apiClient.getNewLiveTvTimerDefaults({programId:programId}).then(function(item){return(isSeries?apiClient.createLiveTvSeriesTimer(item):apiClient.createLiveTvTimer(item)).then(function(){_loading.default.hide(),sendToast(_globalize.default.translate("RecordingScheduled"))})})}Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_connectionmanager=babelHelpers.interopRequireDefault(_connectionmanager),_loading=babelHelpers.interopRequireDefault(_loading),_globalize=babelHelpers.interopRequireDefault(_globalize);var _default={cancelTimer:cancelTimer,createRecording:createRecording,changeRecordingToSeries:changeRecordingToSeries,toggleRecording:function(serverId,programId,timerId,timerStatus,seriesTimerId){var apiClient=_connectionmanager.default.getApiClient(serverId),hasTimer=timerId&&"Cancelled"!==timerStatus;return seriesTimerId&&hasTimer?function(serverId,timerId,timerStatus,seriesTimerId){var items=[];return items.push({name:_globalize.default.translate("HeaderKeepRecording"),id:"cancel",type:"submit"}),"InProgress"===timerStatus?items.push({name:_globalize.default.translate("HeaderStopRecording"),id:"canceltimer",type:"cancel"}):items.push({name:_globalize.default.translate("HeaderCancelRecording"),id:"canceltimer",type:"cancel"}),items.push({name:_globalize.default.translate("HeaderCancelSeries"),id:"cancelseriestimer",type:"cancel"}),getRequirePromise(["dialog"]).then(function(dialog){return dialog({text:_globalize.default.translate("MessageConfirmRecordingCancellation"),buttons:items}).then(function(result){var apiClient=_connectionmanager.default.getApiClient(serverId);return"canceltimer"===result?(_loading.default.show(),cancelTimer(apiClient,timerId,!0)):"cancelseriestimer"===result?(_loading.default.show(),apiClient.cancelLiveTvSeriesTimer(seriesTimerId).then(function(){sendToast(_globalize.default.translate("SeriesCancelled")),_loading.default.hide()})):Promise.resolve()})})}(serverId,timerId,timerStatus,seriesTimerId):hasTimer&&programId?changeRecordingToSeries(apiClient,timerId,programId,!0):programId?createRecording(apiClient,programId):Promise.reject()},cancelTimerWithConfirmation:cancelTimerWithConfirmation,cancelSeriesTimerWithConfirmation:function(timerId,serverId){return getRequirePromise(["confirm"]).then(function(confirm){return confirm({text:_globalize.default.translate("MessageConfirmRecordingCancellation"),primary:"cancel",confirmText:_globalize.default.translate("HeaderCancelSeries"),cancelText:_globalize.default.translate("HeaderKeepSeries")}).then(function(){return _loading.default.show(),_connectionmanager.default.getApiClient(serverId).cancelLiveTvSeriesTimer(timerId).then(function(){sendToast(_globalize.default.translate("SeriesCancelled")),_loading.default.hide()})})})}};_exports.default=_default});