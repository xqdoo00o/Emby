define(["scroller","layoutManager","browser"],function(scroller,layoutManager,browser){"use strict";function onInit(){this.hasInit||(this.hasInit=!0,this.classList.add("emby-scroller"))}var EmbyScroller=function(_HTMLDivElement){babelHelpers.inherits(EmbyScroller,_HTMLDivElement);var _super=_createSuper(EmbyScroller);function EmbyScroller(){var _this;babelHelpers.classCallCheck(this,EmbyScroller);var self=_this=_super.call(this);return onInit.call(self),babelHelpers.possibleConstructorReturn(_this,self)}return babelHelpers.createClass(EmbyScroller,[{key:"connectedCallback",value:function(){onInit.call(this);var horizontal="false"!==this.getAttribute("data-horizontal"),slider=this.querySelector(".scrollSlider");horizontal&&(slider.style["white-space"]="nowrap");var elem,bindHeaderValue=this.getAttribute("data-bindheader"),bindHeader="true"===bindHeaderValue||layoutManager.tv&&"tv"===bindHeaderValue,enableScrollButtons=!layoutManager.tv&&horizontal&&"false"!==this.getAttribute("data-scrollbuttons"),options={horizontal:horizontal,mouseDragging:1,mouseWheel:"false"!==this.getAttribute("data-mousewheel"),touchDragging:1,slidee:slider,scrollBy:200,speed:300,elasticBounds:1,dragHandle:1,autoImmediate:!0,skipSlideToWhenVisible:"true"===this.getAttribute("data-skipfocuswhenvisible"),hideScrollbar:enableScrollButtons||null,forceScrollbar:enableScrollButtons||"true"===this.getAttribute("data-forcescrollbar"),allowNativeSmoothScroll:!1,centerFocus:layoutManager.tv&&this.getAttribute("data-centerfocus"),forceNativeScroll:"true"===this.getAttribute("data-forcenativescroll")};this.scroller=new scroller(this,options),this.scroller.init(),bindHeader&&(elem=this,require(["headroom"],function(Headroom){var headroom=new Headroom({scroller:elem,element:document.querySelector(".skinHeader")});headroom.init(),elem.headroom=headroom})),enableScrollButtons&&function(scroller){require(["emby-scrollbuttons"],function(){scroller.insertAdjacentHTML("afterbegin",'<div is="emby-scrollbuttons"></div>')})}(this),this.dispatchEvent(new CustomEvent("upgraded",{cancelable:!1}))}},{key:"disconnectedCallback",value:function(){var headroom=this.headroom;headroom&&(headroom.destroy(),this.headroom=null);var scrollerInstance=this.scroller;scrollerInstance&&(scrollerInstance.destroy(),this.scroller=null)}},{key:"pause",value:function(){var headroom=this.headroom;headroom&&headroom.pause()}},{key:"beginResume",value:function(){var headroom=this.headroom;headroom&&headroom.beginResume()}},{key:"resume",value:function(){var headroom=this.headroom;headroom&&headroom.resume()}},{key:"getScrollSize",value:function(){if(this.scroller)return this.scroller.getScrollSize()}},{key:"getScrollWidth",value:function(){if(this.scroller)return this.scroller.getScrollWidth()}},{key:"getScrollHeight",value:function(){if(this.scroller)return this.scroller.getScrollHeight()}},{key:"getScrollPosition",value:function(){if(this.scroller)return this.scroller.getScrollPosition()}},{key:"getLastScrollPosition",value:function(){if(this.scroller)return this.scroller.getLastScrollPosition()}},{key:"isNativeScroll",value:function(){if(this.scroller)return this.scroller.isNativeScroll()}},{key:"getScrollLeft",value:function(){if(this.scroller)return this.scroller.getScrollLeft()}},{key:"getScrollTop",value:function(){if(this.scroller)return this.scroller.getScrollTop()}},{key:"getScrollContainerBoundingClientRect",value:function(){if(this.scroller)return this.scroller.getScrollContainerBoundingClientRect()}},{key:"getScrollSlider",value:function(){if(this.scroller)return this.scroller.getScrollSlider()}},{key:"scrollToBeginning",value:function(){this.scroller&&this.scroller.slideTo(0,{behavior:"instant"})}},{key:"toStart",value:function(elem,scrollOptions){this.scroller&&this.scroller.toStart(elem,scrollOptions)}},{key:"toCenter",value:function(elem,scrollOptions){this.scroller&&this.scroller.toCenter(elem,scrollOptions)}},{key:"scrollToPosition",value:function(pos){if(this.scroller)return this.scroller.scrollToPosition(pos)}},{key:"addScrollEventListener",value:function(fn,options){this.scroller&&this.scroller.addScrollEventListener(fn,options)}},{key:"removeScrollEventListener",value:function(fn,options){this.scroller&&this.scroller.removeScrollEventListener(fn,options)}}]),EmbyScroller}(babelHelpers.wrapNativeSuper(HTMLDivElement));customElements.define("emby-scroller",EmbyScroller,{extends:"div"})});