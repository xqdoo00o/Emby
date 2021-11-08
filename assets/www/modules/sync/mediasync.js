define(["localassetmanager","itemrepository","useractionrepository"],function(localassetmanager,itemrepository,useractionrepository){"use strict";function processDownloadStatus(apiClient){return console.log("[mediasync] Begin processDownloadStatus"),localassetmanager.resyncTransfers().then(function(){return itemrepository.getLibraryItemsBySyncStatus(apiClient.serverId(),["transferring","queued"]).then(function(items){console.log("[mediasync] Begin processDownloadStatus getLibraryItemsBySyncStatus completed");var p=Promise.resolve(),cnt=0;return items.forEach(function(item){p=p.then(function(){return reportTransfer(apiClient,item)}),cnt++}),p.then(function(){return console.log("[mediasync] Exit processDownloadStatus. Items reported: "+cnt.toString()),Promise.resolve()})})})}function reportTransfer(apiClient,item){return localassetmanager.getItemFileSize(item.LocalPath).then(function(size){return 0<size?apiClient.reportSyncJobItemTransferred(item.SyncJobItemId).then(function(){return item.SyncStatus="synced",console.log("[mediasync] reportSyncJobItemTransferred called for "+item.LocalPath),itemrepository.updateLibraryItem(item.ServerId,item.Id,item).then(function(){return function(apiClient,libraryItem){var p=Promise.resolve();libraryItem.SeriesId&&(p=p.then(function(){return downloadItem(apiClient,libraryItem.SeriesId)}));libraryItem.SeasonId&&(p=p.then(function(){return downloadItem(apiClient,libraryItem.SeasonId)}));libraryItem.AlbumId&&(p=p.then(function(){return downloadItem(apiClient,libraryItem.AlbumId)}),libraryItem.AlbumId!==libraryItem.ParentId&&(p=p.then(function(){return downloadItem(apiClient,libraryItem.ParentId)})));return p}(apiClient,item.Item)})},function(error){return console.error("[mediasync] Mediasync error on reportSyncJobItemTransferred",error),item.SyncStatus="error",itemrepository.updateLibraryItem(item.ServerId,item.Id,item)}):localassetmanager.isDownloadFileInQueue(item.LocalPath).then(function(result){return result?Promise.resolve():(console.log("[mediasync] reportTransfer: Size is 0 and download no longer in queue. Setting item as failed."),item.SyncStatus="error",itemrepository.updateLibraryItem(item.ServerId,item.Id,item))})},function(error){return console.error("[mediasync] reportTransfer: error on getItemFileSize. Deleting item.",error),localassetmanager.removeLocalItem(item).then(function(){return console.log("[mediasync] reportTransfer: Item deleted."),Promise.resolve()},function(err2){return console.log("[mediasync] reportTransfer: Failed to delete item.",err2),Promise.resolve()})})}function mapToId(userAction){return userAction.Id}function reportOfflineActions(apiClient){return console.log("[mediasync] Begin reportOfflineActions"),useractionrepository.getByServerId(apiClient.serverId()).then(function(actions){return actions.length?apiClient.reportOfflineActions(actions).then(function(){return useractionrepository.deleteUserActions(actions.map(mapToId)).then(function(){return console.log("[mediasync] Exit reportOfflineActions (actions reported and deleted.)"),Promise.resolve()})},function(err){return console.error("[mediasync] error on apiClient.reportOfflineActions: "+err.toString()),useractionrepository.deleteUserActions(actions.map(mapToId))}):(console.log("[mediasync] Exit reportOfflineActions (no actions)"),Promise.resolve())})}function syncData(apiClient){console.log("[mediasync] Begin syncData");return itemrepository.getLibraryItemsBySyncStatus(apiClient.serverId(),["synced","error"]).then(function(items){var request={TargetId:apiClient.deviceId(),LocalItemIds:items.map(function(xitem){return xitem.ItemId})};return apiClient.syncData(request).then(function(result){return function(apiClient,syncDataResult){console.log("[mediasync] Begin afterSyncData");var p=Promise.resolve();syncDataResult.ItemIdsToRemove&&0<syncDataResult.ItemIdsToRemove.length&&syncDataResult.ItemIdsToRemove.forEach(function(itemId){p=p.then(function(){return function(itemId,serverId){return console.log("[mediasync] Begin removeLocalItem"),itemrepository.getLibraryItem(serverId,itemId).then(function(item){return item?localassetmanager.removeLocalItem(item):Promise.resolve()},function(err2){return console.error("[mediasync] removeLocalItem: Failed: ",err2),Promise.resolve()})}(itemId,apiClient.serverId())})});return(p=p.then(function(){return console.log("[mediasync] Begin removeObsoleteContainerItems"),serverId=apiClient.serverId(),itemrepository.getAllLibraryItems(serverId).then(function(items){var seriesItems=items.filter(function(item){return"series"===(item.Item.Type||"").toLowerCase()}),seasonItems=items.filter(function(item){return"season"===(item.Item.Type||"").toLowerCase()}),albumItems=items.filter(function(item){var type=(item.Item.Type||"").toLowerCase();return"musicalbum"===type||"photoalbum"===type}),requiredSeriesIds=items.filter(function(item){return"episode"===(item.Item.Type||"").toLowerCase()}).map(function(item2){return item2.Item.SeriesId}).filter(filterDistinct),requiredSeasonIds=items.filter(function(item){return"episode"===(item.Item.Type||"").toLowerCase()}).map(function(item2){return item2.Item.SeasonId}).filter(filterDistinct),requiredAlbumIds=items.filter(function(item){var type=(item.Item.Type||"").toLowerCase();return"audio"===type||"photo"===type}).map(function(item2){return item2.Item.AlbumId}).filter(filterDistinct),obsoleteItems=[];seriesItems.forEach(function(item){requiredSeriesIds.indexOf(item.Item.Id)<0&&obsoleteItems.push(item)}),seasonItems.forEach(function(item){requiredSeasonIds.indexOf(item.Item.Id)<0&&obsoleteItems.push(item)}),albumItems.forEach(function(item){requiredAlbumIds.indexOf(item.Item.Id)<0&&obsoleteItems.push(item)});var p=Promise.resolve();return obsoleteItems.forEach(function(item){p=p.then(function(){return itemrepository.deleteLibraryItem(item.ServerId,item.ItemId)})}),p});var serverId})).then(function(){return console.log("[mediasync] Exit afterSyncData"),Promise.resolve()})}(apiClient,result).then(function(){return console.log("[mediasync] Exit syncData"),Promise.resolve()},function(err){return console.error("[mediasync] Error in syncData: "+err.toString()),Promise.resolve()})})})}function filterDistinct(value,index,self){return self.indexOf(value)===index}function getNewMedia(apiClient,downloadCount){return console.log("[mediasync] Begin getNewMedia"),apiClient.getReadySyncItems(apiClient.deviceId()).then(function(jobItems){console.log("[mediasync] getReadySyncItems returned "+jobItems.length+" items");var p=Promise.resolve(),currentCount=downloadCount;return jobItems.forEach(function(jobItem){currentCount++<=10&&(p=p.then(function(){return function(jobItem,apiClient){console.log("[mediasync] Begin getNewItem");var libraryItem=jobItem.Item;return itemrepository.getLibraryItem(libraryItem.ServerId,libraryItem.Id).then(function(existingItem){if(existingItem&&("queued"===existingItem.SyncStatus||"transferring"===existingItem.SyncStatus||"synced"===existingItem.SyncStatus)&&(console.log("[mediasync] getNewItem: getLibraryItem found existing item"),localassetmanager.enableBackgroundCompletion()))return Promise.resolve();libraryItem.CanDelete=!0,libraryItem.CanDownload=!1,libraryItem.SupportsSync=!1,libraryItem.People=[],libraryItem.Chapters=[],libraryItem.Studios=[],libraryItem.SpecialFeatureCount=null,libraryItem.LocalTrailerCount=null,libraryItem.RemoteTrailers=[];var localItem=createLocalItem(libraryItem,jobItem);return localItem.SyncStatus="queued",itemrepository.updateLibraryItem(localItem.ServerId,localItem.Id,localItem).then(function(){return function(apiClient,jobItem,localItem){console.log("[mediasync] downloadMedia: start.");var url=apiClient.getUrl("Sync/JobItems/"+jobItem.SyncJobItemId+"/File",{api_key:apiClient.accessToken()});return function(localItem,jobItem){if(localItem.LocalPathParts)return;var libraryItem=localItem.Item,parts=localassetmanager.getDirectoryPath(libraryItem);parts.push(localassetmanager.getLocalFileName(libraryItem,jobItem.OriginalFileName)),localItem.LocalPathParts=parts}(localItem,jobItem),localassetmanager.downloadFile(url,localItem).then(function(result){console.log("[mediasync] downloadMedia-downloadFile returned path: "+result.path);var localPath=result.path,libraryItem=localItem.Item;if(localPath&&libraryItem.MediaSources)for(var i=0;i<libraryItem.MediaSources.length;i++){var mediaSource=libraryItem.MediaSources[i];mediaSource.Path=localPath,mediaSource.Protocol="File",mediaSource.MediaStreams.forEach(function(stream){"Subtitle"!==stream.Type||stream.IsExternal||(stream.DeliveryMethod="Embed")})}return localItem.LocalPath=localPath,localItem.SyncStatus="transferring",itemrepository.updateLibraryItem(localItem.ServerId,localItem.Id,localItem).then(function(){return function(apiClient,jobItem,localItem){return console.log("[mediasync] Begin afterMediaDownloaded"),function(apiClient,localItem){console.log("[mediasync] Begin getImages");var p=Promise.resolve(),libraryItem=localItem.Item,serverId=libraryItem.ServerId,mainImageTag=(libraryItem.ImageTags||{}).Primary;libraryItem.Id&&mainImageTag&&(p=p.then(function(){return downloadImage(localItem,apiClient,serverId,libraryItem.Id,mainImageTag,"Primary")}));var logoImageTag=(libraryItem.ImageTags||{}).Logo;libraryItem.Id&&logoImageTag&&(p=p.then(function(){return downloadImage(localItem,apiClient,serverId,libraryItem.Id,logoImageTag,"Logo")}));var artImageTag=(libraryItem.ImageTags||{}).Art;libraryItem.Id&&artImageTag&&(p=p.then(function(){return downloadImage(localItem,apiClient,serverId,libraryItem.Id,artImageTag,"Art")}));var bannerImageTag=(libraryItem.ImageTags||{}).Banner;libraryItem.Id&&bannerImageTag&&(p=p.then(function(){return downloadImage(localItem,apiClient,serverId,libraryItem.Id,bannerImageTag,"Banner")}));var thumbImageTag=(libraryItem.ImageTags||{}).Thumb;libraryItem.Id&&thumbImageTag&&(p=p.then(function(){return downloadImage(localItem,apiClient,serverId,libraryItem.Id,thumbImageTag,"Thumb")}));if(libraryItem.Id&&libraryItem.BackdropImageTags)for(var i=0;i<libraryItem.BackdropImageTags.length;i++);libraryItem.SeriesId&&libraryItem.SeriesPrimaryImageTag&&(p=p.then(function(){return downloadImage(localItem,apiClient,serverId,libraryItem.SeriesId,libraryItem.SeriesPrimaryImageTag,"Primary")}));libraryItem.SeasonId&&(libraryItem.SeasonPrimaryImageTag||(p=p.then(function(){return apiClient.getItem(apiClient.getCurrentUserId(),libraryItem.SeasonId).then(function(seasonItem){return libraryItem.SeasonPrimaryImageTag=(seasonItem.ImageTags||{}).Primary,Promise.resolve()})})),p=p.then(function(){return downloadImage(localItem,apiClient,serverId,libraryItem.SeasonId,libraryItem.SeasonPrimaryImageTag,"Primary")}));libraryItem.AlbumId&&libraryItem.AlbumPrimaryImageTag&&(p=p.then(function(){return downloadImage(localItem,apiClient,serverId,libraryItem.AlbumId,libraryItem.AlbumPrimaryImageTag,"Primary")}));libraryItem.ParentThumbItemId&&libraryItem.ParentThumbImageTag&&(p=p.then(function(){return downloadImage(localItem,apiClient,serverId,libraryItem.ParentThumbItemId,libraryItem.ParentThumbImageTag,"Thumb")}));libraryItem.ParentPrimaryImageItemId&&libraryItem.ParentPrimaryImageTag&&(p=p.then(function(){return downloadImage(localItem,apiClient,serverId,libraryItem.ParentPrimaryImageItemId,libraryItem.ParentPrimaryImageTag,"Primary")}));return p.then(function(){return console.log("[mediasync] Finished getImages"),itemrepository.updateLibraryItem(localItem.ServerId,localItem.Id,localItem)},function(err){return console.log("[mediasync] Error getImages: "+err.toString()),Promise.resolve()})}(apiClient,localItem).then(function(){return function(apiClient,jobItem,localItem){if(console.log("[mediasync] Begin getSubtitles"),!jobItem.Item.MediaSources.length)return console.log("[mediasync] Cannot download subtitles because video has no media source info."),Promise.resolve();var files=jobItem.AdditionalFiles.filter(function(f){return"Subtitles"===f.Type}),mediaSource=jobItem.Item.MediaSources[0],p=Promise.resolve();return files.forEach(function(file){p=p.then(function(){return function(file,apiClient,jobItem,localItem,mediaSource){console.log("[mediasync] Begin getItemSubtitle");var subtitleStream=mediaSource.MediaStreams.filter(function(m){return"Subtitle"===m.Type&&m.Index===file.Index})[0];if(!subtitleStream)return console.log("[mediasync] Cannot download subtitles because matching stream info was not found."),Promise.resolve();var fileName=localassetmanager.getSubtitleSaveFileName(localItem,jobItem.OriginalFileName,subtitleStream.Language,subtitleStream.IsForced,subtitleStream.Codec);return localassetmanager.getItemFileSize(fileName).then(function(size){if(0<size)return Promise.resolve();var url=apiClient.getUrl("Sync/JobItems/"+jobItem.SyncJobItemId+"/AdditionalFiles",{Name:file.Name,api_key:apiClient.accessToken()});return localassetmanager.downloadSubtitles(url,fileName).then(function(subtitleResult){return localItem.AdditionalFiles&&localItem.AdditionalFiles.forEach(function(item){item.Name===file.Name&&(item.Path=subtitleResult.path)}),subtitleStream.Path=subtitleResult.path,subtitleStream.DeliveryMethod="External",itemrepository.updateLibraryItem(localItem.ServerId,localItem.Id,localItem)})})}(file,apiClient,jobItem,localItem,mediaSource)})}),p.then(function(){return console.log("[mediasync] Exit getSubtitles"),Promise.resolve()})}(apiClient,jobItem,localItem)})}(apiClient,jobItem,localItem).then(function(){return result.isComplete?(localItem.SyncStatus="synced",reportTransfer(apiClient,localItem)):Promise.resolve()},function(err){return console.log("[mediasync] downloadMedia: afterMediaDownloaded failed: "+err),Promise.reject(err)})},function(err){return console.log("[mediasync] downloadMedia: updateLibraryItem failed: "+err),Promise.reject(err)})},function(err){return console.log("[mediasync] downloadMedia: localassetmanager.downloadFile failed: "+err),Promise.reject(err)})}(apiClient,jobItem,localItem)})})}(jobItem,apiClient)}))}),p.then(function(){return console.log("[mediasync] Exit getNewMedia"),Promise.resolve()})},function(err){return console.error("[mediasync] getReadySyncItems: Failed: ",err),Promise.resolve()})}function createLocalItem(libraryItem,jobItem){console.log("[mediasync] Begin createLocalItem");var item={Item:libraryItem,ItemId:libraryItem.Id,ServerId:libraryItem.ServerId,Id:libraryItem.Id};return jobItem&&(item.SyncJobItemId=jobItem.SyncJobItemId),console.log("[mediasync] End createLocalItem"),item}function downloadItem(apiClient,itemId){return apiClient.getItem(apiClient.getCurrentUserId(),itemId).then(function(downloadedItem){downloadedItem.CanDelete=!0,downloadedItem.CanDownload=!1,downloadedItem.SupportsSync=!1,downloadedItem.People=[],downloadedItem.SpecialFeatureCount=null,downloadedItem.BackdropImageTags=null,downloadedItem.ParentBackdropImageTags=null,downloadedItem.ParentArtImageTag=null,downloadedItem.ParentLogoImageTag=null;var localItem=createLocalItem(downloadedItem,null);return itemrepository.updateLibraryItem(localItem.ServerId,localItem.Id,localItem).then(function(){return Promise.resolve(localItem)},function(err){return console.error("[mediasync] downloadItem failed: "+err.toString()),Promise.resolve(null)})})}function downloadImage(localItem,apiClient,serverId,itemId,imageTag,imageType,index){return index=index||0,localassetmanager.hasImage(serverId,itemId,imageType,index).then(function(hasImage){if(hasImage)return console.log("[mediasync] downloadImage - skip existing: "+itemId+" "+imageType+"_"+index.toString()),Promise.resolve();var maxWidth=400;"backdrop"===imageType&&(maxWidth=null);var imageUrl=apiClient.getImageUrl(itemId,{tag:imageTag,type:imageType,maxWidth:maxWidth,api_key:apiClient.accessToken()});return console.log("[mediasync] downloadImage "+itemId+" "+imageType+"_"+index.toString()),localassetmanager.downloadImage(localItem,imageUrl,serverId,itemId,imageType,index).then(function(result){return Promise.resolve(result)},function(err){return console.log("[mediasync] Error downloadImage: "+err.toString()),Promise.resolve()})},function(err){return console.log("[mediasync] Error downloadImage: "+err.toString()),Promise.resolve()})}function checkLocalFileExistence(apiClient,options){if(options.checkFileExistence){console.log("[mediasync] Begin checkLocalFileExistence");return itemrepository.getLibraryItemsBySyncStatus(apiClient.serverId(),["synced","error"]).then(function(items){var p=Promise.resolve();return items.forEach(function(completedItem){p=p.then(function(){return localassetmanager.fileExists(completedItem.LocalPath).then(function(exists){return exists?Promise.resolve():localassetmanager.removeLocalItem(completedItem).then(function(){return Promise.resolve()},function(){return Promise.resolve()})})})}),p})}return Promise.resolve()}return function(){var isUwp="string"==typeof webWorkerBaseUrl&&-1!==webWorkerBaseUrl.indexOf("ms-appx://"),isAndroidDm="undefined"!=typeof AndroidAppHost;this.sync=isUwp||isAndroidDm?function(apiClient,options){return console.log("[mediasync]************************************* Start sync (uwp/androidownloadmanager)"),console.log("[mediasync] options.syncCheckProgressOnly = "+(options.syncCheckProgressOnly||"false")),checkLocalFileExistence(apiClient,options).then(function(){return processDownloadStatus(apiClient).then(function(){return localassetmanager.getDownloadItemCount().then(function(downloadCount){return!0===options.syncCheckProgressOnly&&2<downloadCount?(console.log("[mediasync] exit due to syncCheckProgressOnly with downloadcount = "+downloadCount),console.log("[mediasync]************************************* Exit sync"),Promise.resolve()):reportOfflineActions(apiClient).then(function(){return getNewMedia(apiClient,downloadCount).then(function(){return syncData(apiClient).then(function(){return console.log("[mediasync]************************************* Exit sync"),Promise.resolve()})})})})})},function(err){console.error(err.toString())})}:function(apiClient,options){return console.log("[mediasync]************************************* Start sync"),checkLocalFileExistence(apiClient,options).then(function(){return syncData(apiClient).then(function(){return processDownloadStatus(apiClient).then(function(){return localassetmanager.getDownloadItemCount().then(function(downloadCount){return!0===options.syncCheckProgressOnly&&2<downloadCount?Promise.resolve():reportOfflineActions(apiClient).then(function(){return getNewMedia(apiClient,downloadCount).then(function(){return syncData(apiClient)})})})})})},function(err){console.error(err.toString())})}}});