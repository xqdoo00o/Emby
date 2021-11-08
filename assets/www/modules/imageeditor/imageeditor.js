define(["dialogHelper","cardBuilder","connectionManager","loading","dom","layoutManager","focusManager","globalize","imageLoader","require","browser","apphost","cardStyle","formDialogStyle","emby-button","paper-icon-button-light","emby-scroller","css!./imageeditor"],function(dialogHelper,cardBuilder,connectionManager,loading,dom,layoutManager,focusManager,globalize,imageLoader,require,browser,appHost){"use strict";var currentItemInfo,currentItemId,currentServerId,hasChanges=!1;function getItemInfo(){if(currentItemInfo)return Promise.resolve(currentItemInfo);loading.show();var apiClient=connectionManager.getApiClient(currentServerId);return apiClient.getItem(apiClient.getCurrentUserId(),currentItemId).then(function(item){return apiClient.getItemImageInfos(currentItemId).then(function(imageInfos){return apiClient.getRemoteImageProviders({itemId:currentItemId}).then(function(providers){var itemInfo={item:item,imageInfos:imageInfos,providers:providers};return loading.hide(),itemInfo})})})}function addListeners(container,className,eventName,fn){container.addEventListener(eventName,function(e){var elem=e.target.closest("."+className);elem&&fn.call(elem,e)})}function getImageUrl(item,apiClient,type,index,options){return(options=options||{}).type=type,options.index=index,options.tag="Backdrop"===type?item.BackdropImageTags[index]:"Primary"===type&&item.PrimaryImageTag||item.ImageTags[type],options.tag?apiClient.getImageUrl(item.Id||item.ItemId,options):null}function setImageProperties(image,itemInfo,apiClient){var item=itemInfo.item;image.Type="ItemImage",image.ServerId=item.ServerId,image.Id=item.Id,image.OwnerItem=item,image.Providers=itemInfo.providers,image.Name=globalize.translate(image.ImageType),"Backdrop"===image.ImageType?image.ImageUrl=getImageUrl(item,apiClient,image.ImageType,image.ImageIndex):(image.ImageTags={},image.ImageTags[image.ImageType]=item.ImageTags?item.ImageTags[image.ImageType]:null,"Primary"!==image.ImageType||image.ImageTags[image.ImageType]?image.ImageTags[image.ImageType]&&(image.ImageUrl=getImageUrl(item,apiClient,image.ImageType)):image.ImageTags[image.ImageType]=item.PrimaryImageTag,image.ImageTag=image.ImageTags[image.ImageType],"Primary"===image.ImageType&&"TvChannel"===itemInfo.item.Type&&apiClient.isMinServerVersion("4.6.0.20")&&(image.Name=globalize.translate("LogoDark")))}function getStandardImages(){return getItemInfo().then(function(itemInfo){var item=itemInfo.item,imageInfos=itemInfo.imageInfos,types=["Primary"];("TvChannel"!==item.Type||item.ImageTags&&item.ImageTags.Logo)&&types.push("Logo");var apiClient=connectionManager.getApiClient(item);"TvChannel"===item.Type&&apiClient.isMinServerVersion("4.6.0.20")&&(types.push("LogoLight"),types.push("LogoLightColor")),types.push("Thumb"),types.push("Banner"),types.push("Disc"),types.push("Art"),"Game"===item.Type&&types.push("Box");for(var result=[],i=0,length=types.length;i<length;i++){var imageInfo=function(images,type){for(var i=0,length=images.length;i<length;i++){var image=images[i];if(image.ImageType===type)return image}return null}(imageInfos,types[i])||{ImageType:types[i]};setImageProperties(imageInfo,itemInfo,apiClient),result.push(imageInfo)}return{Items:result,TotalRecordCount:result.length}})}function getBackdropImages(){return getItemInfo().then(function(itemInfo){for(var item=itemInfo.item,imageInfos=itemInfo.imageInfos.filter(function(t){return"Backdrop"===t.ImageType}),result=[],backdropImageTags=item.BackdropImageTags||[],apiClient=connectionManager.getApiClient(item),i=0,length=imageInfos.length;i<length;i++){var imageInfo=imageInfos[i];imageInfo.ImageTag=backdropImageTags[i],imageInfo.ImageIndex=i,imageInfo.TotalImages=imageInfos.length,setImageProperties(imageInfo,itemInfo,apiClient),result.push(imageInfo)}return{Items:result,TotalRecordCount:result.length}})}function getStandardImagesListOptions(){var fields=["ItemImageName"];return fields.push("Resolution"),layoutManager.tv||fields.push("ImageEditorStandardButtons"),{renderer:cardBuilder,options:{fields:fields,shape:"backdrop",multiSelect:!1,centerText:!0,overlayText:!1,defaultBackground:!0,cardLayout:!0,cardClass:"imageEditorCard",cardDefaultTextClass:"imageEditorCardDefaultText",action:layoutManager.tv?"menu":"none",addImageSizeToUrl:!0,textLinks:!1,cardFooterAside:!1,draggable:!1},virtualScrollLayout:"vertical-grid"}}function getBackdropImagesListOptions(items){var fields=[];fields.push("FilenameOrName"),fields.push("Resolution"),layoutManager.tv||fields.push("ImageEditorBackdropButtons");var apiClient=items.length?connectionManager.getApiClient(items[0]):null,enableDragReorder=1<items.length&&apiClient&&apiClient.isMinServerVersion("4.6.0.39");return{renderer:cardBuilder,options:{fields:fields,shape:"backdrop",multiSelect:!1,centerText:!0,overlayText:!1,cardClass:"imageEditorCard",cardDefaultTextClass:"imageEditorCardDefaultText",defaultBackground:!0,cardLayout:!0,imageFallback:!1,action:layoutManager.tv?"menu":"none",addImageSizeToUrl:!0,textLinks:!1,cardFooterAside:!1,dragReorder:enableDragReorder,draggable:enableDragReorder},virtualScrollLayout:"vertical-grid"}}function refreshItemContainers(context){var standardImagesItemsContainer=context.querySelector(".images"),backdropImagesItemsContainer=context.querySelector(".backdrops"),promises=[];return promises.push(standardImagesItemsContainer.resume({refresh:!0})),promises.push(backdropImagesItemsContainer.resume({refresh:!0})),Promise.all(promises).then(function(){focusManager.autoFocus(context)})}function onItemChanged(context){currentItemInfo=null,refreshItemContainers(context)}function onAddButtonClick(e){var imageType=this.getAttribute("data-imagetype");require(["imageUploader"],function(imageUploader){getItemInfo().then(function(itemInfo){imageUploader.show({imageType:imageType,item:itemInfo.item}).then(function(hasChanged){hasChanged&&(hasChanges=!0,onItemChanged(e.target.closest(".formDialog")))})})})}function initEditor(context,options,itemInfo){addListeners(context,"btnBrowseAllImages","click",function(){!function(context,imageType){require(["imageDownloader"],function(ImageDownloader){getItemInfo().then(function(itemInfo){(new ImageDownloader).show({item:itemInfo.item,imageType:imageType}).then(function(){hasChanges=!0,onItemChanged(context)})})})}(context,this.getAttribute("data-imagetype"))}),addListeners(context,"btnAddImage","click",onAddButtonClick);var standardImagesItemsContainer=context.querySelector(".images");standardImagesItemsContainer.fetchData=getStandardImages,standardImagesItemsContainer.getListOptions=getStandardImagesListOptions,standardImagesItemsContainer.monitorItems=[itemInfo.item.Id];var backdropImagesItemsContainer=context.querySelector(".backdrops");backdropImagesItemsContainer.fetchData=getBackdropImages,backdropImagesItemsContainer.getListOptions=getBackdropImagesListOptions,backdropImagesItemsContainer.monitorItems=[itemInfo.item.Id],appHost.supports("fileinput")?context.querySelector(".btnAddImage").classList.remove("hide"):context.querySelector(".btnAddImage").classList.add("hide"),itemInfo.providers.length?context.querySelector(".btnBrowseAllImages").classList.remove("hide"):context.querySelector(".btnBrowseAllImages").classList.add("hide")}function onItemsContainerUpgraded(){refreshItemContainers(this)}function onOpened(){var standardImagesItemsContainer=this.querySelector(".images");standardImagesItemsContainer.resume?refreshItemContainers(this):dom.addEventListener(standardImagesItemsContainer,"upgraded",onItemsContainerUpgraded,{once:!0})}return{show:function(options){return hasChanges=!1,function(options){return currentItemId=options.itemId,currentServerId=options.serverId,loading.show(),Promise.all([require(["text!./imageeditor.template.html"]),getItemInfo()]).then(function(responses){var template=responses[0][0],itemInfo=responses[1],dialogOptions=(connectionManager.getApiClient(currentServerId),{removeOnClose:!0,scrollY:!1});layoutManager.tv?dialogOptions.size="fullscreen":dialogOptions.size="fullscreen-border";var dlg=dialogHelper.createDialog(dialogOptions);return dlg.classList.add("formDialog"),dlg.innerHTML=globalize.translateDocument(template,"sharedcomponents"),initEditor(dlg,0,itemInfo),dlg.querySelector(".btnCancel").addEventListener("click",function(){dialogHelper.close(dlg)}),dlg.addEventListener("opened",onOpened),dialogHelper.open(dlg).then(function(){return currentServerId=currentItemId=currentItemInfo=null,loading.hide(),hasChanges?Promise.resolve():Promise.reject()})})}(options)}}});