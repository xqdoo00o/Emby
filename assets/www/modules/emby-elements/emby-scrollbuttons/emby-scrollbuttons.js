define(["browser","dom","css!./emby-scrollbuttons","paper-icon-button-light"],function(browser,dom){"use strict";function getScrollButtonContainerHtml(direction){var html="";return html+='<div class="scrollbuttoncontainer scrollbuttoncontainer-'+direction+("left"===direction?" hide":"")+'">',html+='<button type="button" is="paper-icon-button-light" data-ripple="false" data-direction="'+direction+'" class="emby-scrollbuttons-scrollbutton">',html+='<i class="md-icon">'+("left"===direction?"&#xE5CB;":"&#xE5CC;")+"</i>",html+="</button>",html+="</div>"}function getScrollPosition(parent){return parent.getScrollPosition?parent.getScrollPosition():0}function getStyleValue(style,name){var value=style.getPropertyValue(name);return(value=value&&value.replace("px",""))?(value=parseInt(value),isNaN(value)?0:value):0}function onScrollButtonClick(e){var parent=this.closest("[is=emby-scroller]"),direction=this.getAttribute("data-direction"),scrollSize=function(elem){var scrollSize=elem.offsetWidth,style=window.getComputedStyle(elem,null),paddingLeft=getStyleValue(style,"padding-left");paddingLeft&&(scrollSize-=paddingLeft);var paddingRight=getStyleValue(style,"padding-right");paddingRight&&(scrollSize-=paddingRight);var slider=elem.getScrollSlider();return(paddingLeft=getStyleValue(style=window.getComputedStyle(slider,null),"padding-left"))&&(scrollSize-=paddingLeft),(paddingRight=getStyleValue(style,"padding-right"))&&(scrollSize-=paddingRight),scrollSize}(parent),pos=getScrollPosition(parent),newPos="left"===direction?Math.max(0,pos-scrollSize):pos+scrollSize;parent.scrollToPosition({left:newPos})}function onInit(){var parent,scrollHandler,buttons;this.parentNode&&(this.hasInit||(this.hasInit=!0,this.classList.add("emby-scrollbuttons"),parent=this.closest("[is=emby-scroller]"),(this.scroller=parent).classList.add("emby-scrollbuttons-scroller"),parent.querySelector(".scrollSlider").classList.add("emby-scrollbuttons-scrollSlider"),this.innerHTML=getScrollButtonContainerHtml("left")+getScrollButtonContainerHtml("right"),scrollHandler=function(e){var parent,scroller=this.scroller;!function(scrollButtons,pos,scrollWidth){0<pos?scrollButtons.scrollButtonsLeft.classList.remove("hide"):scrollButtons.scrollButtonsLeft.classList.add("hide"),0<scrollWidth&&(scrollWidth<=(pos+=scrollButtons.offsetWidth)?scrollButtons.scrollButtonsRight.classList.add("hide"):scrollButtons.scrollButtonsRight.classList.remove("hide"))}(this,getScrollPosition(scroller),(parent=scroller).getScrollSize?parent.getScrollSize():0)}.bind(this),this.scrollHandler=scrollHandler,(buttons=this.querySelectorAll(".emby-scrollbuttons-scrollbutton"))[0].addEventListener("click",onScrollButtonClick),buttons[1].addEventListener("click",onScrollButtonClick),buttons=this.querySelectorAll(".scrollbuttoncontainer"),this.scrollButtonsLeft=buttons[0],this.scrollButtonsRight=buttons[1],parent.addScrollEventListener(scrollHandler,{capture:!0,passive:!0}),this.frameResizeObserver=new ResizeObserver(scrollHandler,{}),this.frameResizeObserver.observe(parent)))}var EmbyScrollButtons=function(_HTMLDivElement){babelHelpers.inherits(EmbyScrollButtons,_HTMLDivElement);var _super=_createSuper(EmbyScrollButtons);function EmbyScrollButtons(){var _this;babelHelpers.classCallCheck(this,EmbyScrollButtons);var self=_this=_super.call(this);return onInit.call(self),babelHelpers.possibleConstructorReturn(_this,self)}return babelHelpers.createClass(EmbyScrollButtons,[{key:"connectedCallback",value:function(){onInit.call(this)}},{key:"disconnectedCallback",value:function(){var parent=this.scroller;this.scroller=null;var observer=this.frameResizeObserver;observer&&(observer.disconnect(),this.frameResizeObserver=null);var scrollHandler=this.scrollHandler;parent&&scrollHandler&&parent.removeScrollEventListener(scrollHandler,{capture:!1,passive:!0}),this.scrollHandler=null,this.scrollButtonsLeft=null,this.scrollButtonsRight=null}}]),EmbyScrollButtons}(babelHelpers.wrapNativeSuper(HTMLDivElement));customElements.define("emby-scrollbuttons",EmbyScrollButtons,{extends:"div"})});