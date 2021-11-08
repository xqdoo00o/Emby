define(["backdrop","userSettings","connectionManager","layoutManager"],function(backdrop,userSettings,connectionManager,layoutManager){"use strict";function showBackdrop(view,type,parentId){var apiClient=connectionManager.currentApiClient();apiClient&&(view.backdropItems?backdrop.setBackdrops(view.backdropItems):function(apiClient,types,parentId){var options={SortBy:"IsFavoriteOrLiked,Random",Limit:20,Recursive:!0,IncludeItemTypes:types,ImageTypes:"Backdrop",ParentId:parentId,EnableTotalRecordCount:!1,ImageTypeLimit:1,EnableImageTypes:"Backdrop"};return apiClient.getItems(apiClient.getCurrentUserId(),options)}(apiClient,type,parentId).then(function(result){var items;result.Items.length?(items=result.Items,view.backdropItems=items,backdrop.setBackdrops(items)):backdrop.clear()}))}document.addEventListener("viewshow",function(e){var params,parentId,detail=e.detail,backdropItemTypes=detail.backdropItemTypes;backdropItemTypes&&!layoutManager.tv&&userSettings.enableBackdrops()&&(parentId=(params=detail.params)?params.parentId:null,showBackdrop(e.target,backdropItemTypes,parentId))}),document.addEventListener("viewdestroy",function(e){var view=e.target;view.backdropItems&&(view.backdropItems=null)})});