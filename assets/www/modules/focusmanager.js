define(["exports","./dom.js","./layoutmanager.js"],function(_exports,_dom,_layoutmanager){Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_dom=babelHelpers.interopRequireDefault(_dom),_layoutmanager=babelHelpers.interopRequireDefault(_layoutmanager);var scopes=[];function getElementToAutoFocus(view,options){var element;return options&&!1===options.findAutoFocusElement||!(element=view.querySelector(".autofocus"))?function(parent,limit,excludeClass){for(var elems=(parent||getDefaultScope()).querySelectorAll(function(excludeClass){if(!excludeClass)return focusableQuery;for(var newQuerySelectors=[focusableQuerySelectors.length],i=0,length=focusableQuerySelectors.length;i<length;i++)newQuerySelectors[i]=focusableQuerySelectors[i]+":not(."+excludeClass+")";return newQuerySelectors.join(",")}(excludeClass)),focusableElements=[],i=0,length=elems.length;i<length;i++){var elem=elems[i];if(isCurrentlyFocusableInternal(elem)&&(focusableElements.push(elem),limit&&focusableElements.length>=limit))break}return focusableElements}(view,1,"noautofocus")[0]:element}function autoFocus(view,options,findAutoFocusElement){var elem=getElementToAutoFocus(view,options);return elem&&focus(elem,options),elem}function focus(element,options){for(;element.classList.contains("focusable");){var autoFocusElement=getElementToAutoFocus(element,options);if(!autoFocusElement)break;element=autoFocusElement}focusInternal(element,options)}function focusInternal(element,options){try{var preventScroll=options?options.preventScroll:null;null==preventScroll&&_layoutmanager.default.tv&&(preventScroll=!0),element.focus({preventScroll:preventScroll})}catch(err){console.log("Error in focusManager.autoFocus: "+err)}}var focusableTagNames=["INPUT","TEXTAREA","SELECT","BUTTON","A"],focusableQuerySelectors=focusableTagNames.map(function(t){return t+':not([tabindex="-1"]):not(:disabled)'});focusableQuerySelectors.push(".focusable");var focusableQuery=focusableQuerySelectors.join(",");var focusableParentQuery=focusableTagNames.join(",")+",.focusable";function focusableParent(elem){return elem.closest(focusableParentQuery)||elem}function isCurrentlyFocusableInternal(elem){return null!==elem.offsetParent}function getDefaultScope(){return scopes[0]||document.body}var focusContainerQueries=[".focuscontainer,.focuscontainer-x,.focuscontainer-left",".focuscontainer,.focuscontainer-x,.focuscontainer-right",".focuscontainer,.focuscontainer-y",".focuscontainer,.focuscontainer-y,.focuscontainer-down"];function getFocusContainer(elem,direction){var selector=focusContainerQueries[direction];return elem.closest(selector)||document.body}function getOffset(elem){var box;return null===(box=elem.getBoundingClientRect?elem.getBoundingClientRect():{top:0,left:0,width:0,height:0}).right&&((box={top:box.top,left:box.left,width:box.width,height:box.height}).right=box.left+box.width,box.bottom=box.top+box.height),box}function getNearestElement(activeElement,activeElementRect,direction,focusableElements,focusableContainer){for(var nearestElement,rect=activeElementRect,point1x=parseFloat(rect.left)||0,point1y=parseFloat(rect.top)||0,point2x=parseFloat(point1x+rect.width-1)||point1x,point2y=parseFloat(point1y+rect.height-1)||point1y,sourceMidX=rect.left+rect.width/2,sourceMidY=rect.top+rect.height/2,minDistance=1/0,i=0,length=focusableElements.length;i<length;i++){var curr=focusableElements[i];if(curr!==activeElement&&curr!==focusableContainer){var elementRect=getOffset(curr),elementRectWidth=elementRect.width,elementRectHeight=elementRect.height,elementRectLeft=elementRect.left,elementRectTop=elementRect.top;if(elementRectWidth||elementRectHeight){switch(direction){case 0:if(elementRectLeft>=rect.left)continue;if(elementRect.right===rect.right)continue;break;case 1:if(elementRect.right<=rect.right)continue;if(elementRectLeft===rect.left)continue;break;case 2:if(elementRectTop>=rect.top)continue;if(elementRect.bottom>=rect.bottom)continue;break;case 3:if(elementRect.bottom<=rect.bottom)continue;if(elementRectTop<=rect.top)continue}var distX,distY,x2=elementRectLeft+elementRectWidth-1,y2=elementRectTop+elementRectHeight-1,intersectX=intersects(point1x,point2x,elementRectLeft,x2),intersectY=intersects(point1y,point2y,elementRectTop,y2),midX=elementRectLeft+elementRectWidth/2,midY=elementRectTop+elementRectHeight/2;switch(direction){case 0:distX=Math.abs(point1x-Math.min(point1x,x2)),distY=intersectY?0:Math.abs(sourceMidY-midY);break;case 1:distX=Math.abs(point2x-Math.max(point2x,elementRectLeft)),distY=intersectY?0:Math.abs(sourceMidY-midY);break;case 2:distY=Math.abs(point1y-Math.min(point1y,y2)),distX=intersectX?0:Math.abs(sourceMidX-midX);break;case 3:distY=Math.abs(point2y-Math.max(point2y,elementRectTop)),distX=intersectX?0:Math.abs(sourceMidX-midX)}var dist=Math.sqrt(distX*distX+distY*distY);dist<minDistance&&(nearestElement=curr,minDistance=dist)}}}return nearestElement}function nav(activeElement,direction){var focusableContainer,focusable,activeElementRect,selectedIndex,newIndex,nearestElement,isBySubContainer,containerParent,nearestElementFocusableParent,focusableType,nearestWithinContainer,container=(activeElement=(activeElement=activeElement||document.activeElement)&&focusableParent(activeElement))?getFocusContainer(activeElement,direction):getDefaultScope();activeElement?(focusableContainer=activeElement.closest(".focusable"),(nearestElement=container.classList.contains("focus-by-sequence")?(focusable=container.querySelectorAll(focusableQuery),selectedIndex=Array.prototype.indexOf.call(focusable,activeElement),newIndex=0===direction||2===direction?selectedIndex-1:selectedIndex+1,focusable[newIndex=Math.min(Math.max(0,newIndex),focusable.length-1)]):(isBySubContainer=!1,container.classList.contains("focus-bysubcontainer")&&(isBySubContainer=!0,focusable=function(activeElement,direction){var subContainer=activeElement.closest(".focus-subcontainer");if(!subContainer)return null;for(var prop=2===direction?"previousSibling":"nextSibling",siblingContainer=subContainer[prop];siblingContainer;){var elems=siblingContainer.querySelectorAll(focusableQuery);if(elems.length)return elems;siblingContainer=siblingContainer[prop]}return null}(activeElement,direction)),focusable||(isBySubContainer&&(container=(containerParent=container.parentNode)?getFocusContainer(containerParent,direction):getDefaultScope()),focusable=container.querySelectorAll(focusableQuery)),getNearestElement(activeElement,activeElementRect=getOffset(activeElement),direction,focusable,focusableContainer)))&&(!activeElement||(nearestElementFocusableParent=nearestElement.closest(".focusable"))&&nearestElementFocusableParent!==nearestElement&&focusableContainer!==nearestElementFocusableParent&&(nearestElement=nearestElementFocusableParent),"autofocus"!==(focusableType=nearestElement.getAttribute("data-focusabletype"))?"nearest"!==focusableType?focusInternal(nearestElement,{}):(nearestWithinContainer=getNearestElement(activeElement,activeElementRect=activeElementRect||getOffset(activeElement),direction,nearestElement.querySelectorAll(focusableQuery),focusableContainer))?focusInternal(nearestWithinContainer):autoFocus(nearestElement):autoFocus(nearestElement))):autoFocus(container,{findAutoFocusElement:!1})}function intersectsInternal(a1,a2,b1,b2){return a1<=b1&&b1<=a2||a1<=b2&&b2<=a2}function intersects(a1,a2,b1,b2){return intersectsInternal(a1,a2,b1,b2)||intersectsInternal(b1,b2,a1,a2)}var _default={autoFocus:autoFocus,focus:focus,focusableParent:focusableParent,moveLeft:function(sourceElement){nav(sourceElement,0)},moveRight:function(sourceElement){nav(sourceElement,1)},moveUp:function(sourceElement){nav(sourceElement,2)},moveDown:function(sourceElement){nav(sourceElement,3)},sendText:function(text){document.activeElement.value=text},isCurrentlyFocusable:function(elem){return!!elem.matches(focusableQuery)&&null!==elem.offsetParent},pushScope:function(elem){scopes.push(elem)},popScope:function(elem){scopes.length&&--scopes.length},hasExclusiveFocusScope:function(){return scopes.length},getCurrentScope:getDefaultScope};_exports.default=_default});