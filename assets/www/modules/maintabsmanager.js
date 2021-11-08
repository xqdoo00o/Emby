define(["exports","./layoutmanager.js"],function(_exports,_layoutmanager){var tabOwnerView,headerTabsContainer,tabsElem,headerTop,headerMiddle;function ensureElements(){headerTabsContainer=headerTabsContainer||document.querySelector(".headerMiddle")}function onViewTabsReady(){this.selectedIndex(this.readySelectedIndex),this.readySelectedIndex=null}function defaultGetTabContainersFn(){return[]}Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_layoutmanager=babelHelpers.interopRequireDefault(_layoutmanager),require(["emby-tabs","emby-button","emby-linkbutton"]);var _default={setTabs:function(view,selectedIndex,getTabsFn,getTabContainersFn,onTabChange,setSelectedIndex){if(!view)return tabOwnerView&&(headerTabsContainer=headerTabsContainer||document.querySelector(".headerMiddle"),ensureElements(),headerTop&&headerTop.classList.remove("headerTop-withSectionTabs","headerTop-tv-withSectionTabs"),headerMiddle&&headerMiddle.classList.remove("headerMiddle-withSectionTabs"),headerTabsContainer.innerHTML="",tabOwnerView=null),{tabsContainer:headerTabsContainer,replaced:!1};ensureElements();var tabsContainerElem=headerTabsContainer;if(tabOwnerView===view)return(tabsElem=tabsElem||tabsContainerElem.querySelector('[is="emby-tabs"]')).selectedIndex(selectedIndex),tabOwnerView=view,{tabsContainer:tabsContainerElem,replaced:!1};var index=0,indexAttribute=null==selectedIndex?"":' data-index="'+selectedIndex+'"',tabsClass="tabs-viewmenubar",tabsSliderClass="tabs-viewmenubar-slider emby-tabs-slider";_layoutmanager.default.tv&&(tabsClass+=" tabs-viewmenubar-tv",tabsSliderClass+=" tabs-viewmenubar-slider-tv");var tabsHtml='<div is="emby-tabs"'+indexAttribute+' class="'+tabsClass+'"><div class="'+tabsSliderClass+'">'+getTabsFn().map(function(t){var tabHtml,tabClass="emby-tab-button main-tab-button";return _layoutmanager.default.tv&&(tabClass+=" main-tab-button-tv"),!1===t.enabled&&(tabClass+=" hide"),t.cssClass&&(tabClass+=" "+t.cssClass),tabHtml=t.href?'<a href="'+t.href+'" is="emby-linkbutton" class="'+tabClass+'" data-index="'+index+'">'+t.name+"</a>":'<button type="button" is="emby-button" class="'+tabClass+'" data-index="'+index+'">'+t.name+"</button>",index++,tabHtml}).join("")+"</div></div>";return tabsContainerElem.innerHTML=tabsHtml,headerTop=headerTop||document.querySelector(".headerTop"),headerMiddle=headerMiddle||document.querySelector(".headerMiddle"),_layoutmanager.default.tv?headerTop.classList.add("headerTop-withSectionTabs","headerTop-tv-withSectionTabs"):headerTop.classList.add("headerTop-withSectionTabs"),headerMiddle.classList.add("headerMiddle-withSectionTabs"),tabOwnerView=view,tabsElem=tabsContainerElem.querySelector('[is="emby-tabs"]'),getTabContainersFn=getTabContainersFn||defaultGetTabContainersFn,tabsElem.addEventListener("beforetabchange",function(e){var previousPanel,tabContainers=getTabContainersFn();null==e.detail.previousIndex||(previousPanel=tabContainers[e.detail.previousIndex])&&previousPanel.classList.remove("is-active");var newPanel=tabContainers[e.detail.selectedTabIndex];newPanel&&newPanel.classList.add("is-active")}),onTabChange&&tabsElem.addEventListener("tabchange",onTabChange),!1!==setSelectedIndex&&(tabsElem.selectedIndex?tabsElem.selectedIndex(selectedIndex):(tabsElem.readySelectedIndex=selectedIndex,tabsElem.addEventListener("ready",onViewTabsReady))),{tabsContainer:tabsContainerElem,replaced:!0}},getTabsElement:function(){return document.querySelector(".tabs-viewmenubar")},selectedTabIndex:function(index){tabsElem=tabsElem||headerTabsContainer.querySelector('[is="emby-tabs"]'),null!=index?tabsElem.selectedIndex(index):tabsElem.triggerTabChange()}};_exports.default=_default});