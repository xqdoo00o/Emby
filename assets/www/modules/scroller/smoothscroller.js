define(["exports","./../layoutmanager.js","./../browser.js","./../dom.js","./../focusmanager.js"],function(_exports,_layoutmanager,_browser,_dom,_focusmanager){Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_layoutmanager=babelHelpers.interopRequireDefault(_layoutmanager),_browser=babelHelpers.interopRequireDefault(_browser),_dom=babelHelpers.interopRequireDefault(_dom),_focusmanager=babelHelpers.interopRequireDefault(_focusmanager),require(["scrollStyles"]);var allowAnimatedScroll=function(){if(!CSS.supports("transform","scale(1)"))return!1;var cores=navigator.hardwareConcurrency||4;return!(cores<4)&&(!((2400<=(screen.width||screen.availWidth||0)||1400<=(screen.height||screen.availHeight||0))&&cores<6)&&(!((navigator.deviceMemory||2)<2)&&(!!_dom.default.supportsEventListenerOnce()&&(!!document.documentElement.animate&&!_browser.default.web0s))))}();function within(number,min,max){return number<min?min:max<number?max:number}function onFrameClick(e){var focusableParent;1!==e.which||(focusableParent=_focusmanager.default.focusableParent(e.target))&&focusableParent!==document.activeElement&&_focusmanager.default.focus(focusableParent,{preventScroll:!0})}function resetScrollTop(){this.scrollTop=0}function getBoundingClientRect(elem){return elem.getBoundingClientRect?elem.getBoundingClientRect():{top:0,left:0}}var wheelEvent=document.implementation.hasFeature("Event.wheel","3.0")?"wheel":"mousewheel",interactiveElements=["INPUT","SELECT","TEXTAREA"],abs=Math.abs,round=Math.round;var isSmoothScrollSupported="scrollBehavior"in document.documentElement.style;function Scroller(frame,options){var o=Object.assign({},{slidee:null,horizontal:!1,mouseWheel:!0,scrollBy:0,dragSource:null,dragThreshold:3,intervactive:null,speed:0},options);!o.forceNativeScroll&&(!isSmoothScrollSupported||(!_browser.default.firefox||_layoutmanager.default.tv)&&!1===o.allowNativeSmoothScroll)&&_layoutmanager.default.tv&&allowAnimatedScroll||(o.enableNativeScroll=!0);var slideeElement=(this.options=o).slidee?o.slidee:function(n,elem){for(var matched=[];n;n=n.nextSibling)1===n.nodeType&&n!==elem&&matched.push(n);return matched}(frame.firstChild)[0];this.listenerCount=0,this._pos={start:0,center:0,end:0,cur:0,dest:0},this.dragSourceElement=o.dragSource?o.dragSource:frame,this.currentDelta=0,this.initialized=0,this.slideeElement=slideeElement,this.options=o,this.dragging={},this.contentRect={};var nativeScrollElement=o.horizontal&&slideeElement||frame;this.nativeScrollElement=nativeScrollElement,this.frame=frame,this.requiresReflow=!0,this.frameSize=0,this.slideeSize=0,this.onSourceClickFn=function(event){var dragging=this.dragging;!dragging.locked&&0<Math.abs(dragging.delta)&&(dragging.locked=1,event.preventDefault(),event.stopPropagation(),(event.currentTarget||event.target).removeEventListener(event.type,this.onSourceClickFn))}.bind(this),this.onScrollForCachingFn=function(e){this._cachedScrollTop=null,this._cachedScrollLeft=null}.bind(this)}function load(instance,isInit){var pos;instance.requiresReflow=!0,isInit||(instance.ensureSizeInfo(),pos=instance._pos,instance.slideTo(within(pos.dest,pos.start,pos.end)))}function onDragEnd(instance){var dragging=instance.dragging;dragging.released=!0;var dragHandler=instance.dragHandler;dragHandler&&(_dom.default.removeEventListener(document,"pointermove",dragHandler,{passive:!0}),_dom.default.removeEventListener(document,"pointerup",dragHandler,{passive:!0})),setTimeout(function(){dragging.source.removeEventListener("click",instance.onSourceClickFn)}),dragging.init=0}function getTouches(e){return e.changedTouches||e.targetTouches||e.touches}function onDragStart(event){var options,touches,pointer,thisDragHandler,dragging=this.dragging;dragging.init||function(element){for(;element;){if(interactiveElements.includes(element.tagName))return 1;element=element.parentNode}}(event.target)||(options=this.options,event.preventDefault(),dragging.init=0,dragging.source=event.target,pointer=(touches=getTouches(event))&&touches.length?touches[0]:event,dragging.initX=pointer.clientX,dragging.initY=pointer.clientY,dragging.initPos=this._pos.cur,dragging.delta=0,dragging.locked=0,dragging.source.addEventListener("click",this.onSourceClickFn),options.enableNativeScroll||(thisDragHandler=this.dragHandler,_dom.default.addEventListener(document,"pointermove",thisDragHandler,{}),_dom.default.addEventListener(document,"pointerup",thisDragHandler,{})))}function addFrameResizeObserver(instance){var elem;instance.frameResizeObserver||(instance.frameResizeObserver=new ResizeObserver(function(entries){var entry=entries[0];if(entry){this._cachedScrollTop=null,this._cachedScrollLeft=null,this._cachedScrollHeight=null,this._cachedScrollWidth=null,this._frameRect=null;var newRect=entry.contentRect;if(this.options.enableNativeScroll)return void(this.requiresReflow=!0);if(0===newRect.width||0===newRect.height)return;var contentRect=this.contentRect;this.options.horizontal?newRect.width!==contentRect.width&&(this.contentRect=newRect,load(this,!1)):newRect.height!==contentRect.height&&(this.contentRect=newRect,load(this,!1))}}.bind(instance),{}),elem=instance.options.enableNativeScroll?instance.nativeScrollElement:instance.frame,instance.frameResizeObserver.observe(elem))}function scrollNative(instance,pos){var elem=instance.nativeScrollElement;return elem.scroll?elem.scroll(pos):elem.scrollTo&&"instant"!==pos.behavior?elem.scrollTo(Math.round(pos.left||0),Math.round(pos.top||0)):(null!=pos.left&&(elem.scrollLeft=Math.round(pos.left)),null!=pos.top&&(elem.scrollTop=Math.round(pos.top))),instance._cachedScrollLeft=null,instance._cachedScrollTop=null,"instant"===pos.behavior?setTimeoutPromise(0):setTimeoutPromise(100)}function setTimeoutPromise(delay){return new Promise(function(resolve,reject){setTimeout(resolve,delay)})}function renderAnimateWithTransform(instance,fromPosition,toPosition,immediate){var options=instance.options,speed=options.speed;immediate&&(speed=options.immediateSpeed||50);var value=options.horizontal?"translateX("+-round(toPosition)+"px)":"translateY("+-round(toPosition)+"px)",style=instance.slideeElement.style,newTransitionValue="transform "+speed+"ms ease-out";return newTransitionValue!==instance._lastTransitionValue&&(style.transition=newTransitionValue,instance._lastTransitionValue=newTransitionValue),function(style,value){requestAnimationFrame(function(){style.transform=value})}(style,value),instance._pos.cur=toPosition,function(instance){instance.options.dispatchScrollEvent&&instance.frame.dispatchEvent(new CustomEvent(instance.getScrollEventName(),{bubbles:!0,cancelable:!1}))}(instance),setTimeoutPromise(speed)}Scroller.prototype.init=function(){if(!this.initialized){var nativeScrollElement,options=this.options,frame=this.frame,slideeElement=this.slideeElement;options.enableNativeScroll?(nativeScrollElement=this.nativeScrollElement,options.horizontal?(nativeScrollElement.classList.add("scrollX"),!1!==options.hideScrollbar&&nativeScrollElement.classList.add("hiddenScrollX"),_layoutmanager.default.tv&&!1!==options.allowNativeSmoothScroll&&nativeScrollElement.classList.add("smoothScrollX")):(nativeScrollElement.classList.add("scrollY"),options.hideScrollbar&&nativeScrollElement.classList.add("hiddenScrollY"),_layoutmanager.default.tv&&!1!==options.allowNativeSmoothScroll&&nativeScrollElement.classList.add("smoothScrollY"),options.forceScrollbar&&nativeScrollElement.classList.add("overflowYScroll"))):(frame.style.overflow="hidden",slideeElement.style.transition="transform "+options.speed+"ms ease-out"),options.horizontal?slideeElement.classList.add("scrollSliderX"):slideeElement.classList.add("scrollSliderY");var dragStartHandler=onDragStart.bind(this);this.dragStartHandler=dragStartHandler;var focusHandler,selfScrollHandler=function(event){this.ensureSizeInfo();var pos=this._pos,options=this.options,scrollBy=options.scrollBy;if(!scrollBy||pos.start===pos.end)return;var delta=function(event,instance){var options=instance.options;return instance.currentDelta=(options.horizontal?event.deltaY||event.deltaX:event.deltaY)||-event.wheelDelta,options.enableNativeScroll||(instance.currentDelta/=1===event.deltaMode?3:100),instance.currentDelta}(event,this);options.enableNativeScroll?(isSmoothScrollSupported&&(delta*=12),options.horizontal?this.nativeScrollElement.scrollLeft+=delta:this.nativeScrollElement.scrollTop+=delta):(0<delta&&pos.dest<pos.end||delta<0&&(pos.dest,pos.start),this.slideBy(scrollBy*delta))}.bind(this);return this.scrollHandler=selfScrollHandler,options.enableNativeScroll&&_layoutmanager.default.tv&&options.centerFocus&&_dom.default.addEventListener(this.dragSourceElement,"mousedown",dragStartHandler,{}),options.enableNativeScroll&&!_layoutmanager.default.tv||addFrameResizeObserver(this),options.enableNativeScroll?options.horizontal&&options.mouseWheel&&_dom.default.addEventListener(frame,wheelEvent,selfScrollHandler,{passive:!0}):(this.dragSourceElement.style["touch-action"]="none",window.PointerEvent?_dom.default.addEventListener(this.dragSourceElement,"pointerdown",dragStartHandler,{}):(_dom.default.addEventListener(this.dragSourceElement,"touchstart",dragStartHandler,{}),_dom.default.addEventListener(this.dragSourceElement,"mousedown",dragStartHandler,{})),options.horizontal||_dom.default.addEventListener(frame,"scroll",resetScrollTop,{passive:!0}),options.mouseWheel&&_dom.default.addEventListener(frame,wheelEvent,selfScrollHandler,{passive:!0})),_layoutmanager.default.tv&&(_dom.default.addEventListener(frame,"click",onFrameClick,{passive:!0,capture:!0}),options.centerFocus&&(focusHandler=this.focusHandler=function(e){var focused=_focusmanager.default.focusableParent(e.target);focused&&this.toCenter(focused)}.bind(this),_dom.default.addEventListener(frame,"focus",focusHandler,{capture:!0,passive:!0}))),this.dragHandler=function(event){var dragging=this.dragging,options=this.options,released="pointerup"===event.type,touches=getTouches(event),pointer=touches&&touches.length?touches[0]:event,pathX=pointer.clientX-dragging.initX,pathY=pointer.clientY-dragging.initY;dragging.delta=options.horizontal?pathX:pathY;var absDelta=Math.abs(dragging.delta);if(released||!(absDelta<1)){if(!dragging.init){if(absDelta<options.dragThreshold)return released?onDragEnd(this):void 0;if(!(options.horizontal?abs(pathX)>abs(pathY):abs(pathX)<abs(pathY)))return onDragEnd(this);dragging.init=1}event.preventDefault(),released&&onDragEnd(this),this.slideTo(dragging.initPos-dragging.delta,{behavior:"instant"})}}.bind(this),this.initialized=1,load(this,!0),this}},Scroller.prototype.slideTo=function(newPos,scrollOptions,fullItemPos){this.ensureSizeInfo();var pos=this._pos;newPos=within(newPos,pos.start,pos.end);var options=this.options,immediate=scrollOptions&&"instant"===scrollOptions.behavior;if(options.skipSlideToWhenVisible&&fullItemPos&&fullItemPos.isVisible)return Promise.resolve();if(options.enableNativeScroll)return scrollNative(this,options.horizontal?{left:newPos,behavior:immediate?"instant":"smooth"}:{top:newPos,behavior:immediate?"instant":"smooth"});if(newPos===pos.dest)return Promise.resolve();pos.cur;return renderAnimateWithTransform(this,0,pos.dest=newPos,immediate)},Scroller.prototype.scrollToPosition=function(pos){var options=this.options;if(null!=pos.position&&(options.horizontal?pos.left=pos.position:pos.top=pos.position,pos.position=null,delete pos.position),!options.enableNativeScroll)return options.horizontal?this.slideTo(pos.left,pos):this.slideTo(pos.top,pos);var hasLeft=null!=pos.left,hasTop=null!=pos.top;if(hasLeft&&hasTop)return pos.behavior="instant",scrollNative(this,pos);if(options.horizontal){if(hasLeft)return this.slideTo(pos.left,pos)}else if(hasTop)return this.slideTo(pos.top,pos);return pos.behavior="instant",scrollNative(this,pos)},Scroller.prototype.getPos=function(item){var options=this.options,slideeOffset=(this.nativeScrollElement,options.enableNativeScroll?this.getScrollContainerBoundingClientRect():getBoundingClientRect(this.slideeElement)),itemOffset=getBoundingClientRect(item),offset=options.horizontal?itemOffset.left-slideeOffset.left:itemOffset.top-slideeOffset.top,size=options.horizontal?itemOffset.width:itemOffset.height;size||0===size||(size=item[options.horizontal?"offsetWidth":"offsetHeight"]);var centerOffset=options.centerOffset||0;options.enableNativeScroll&&(centerOffset=0,options.horizontal?offset+=this.getScrollLeft():offset+=this.getScrollTop()),this.ensureSizeInfo();var frameSize=this.frameSize,currentStart=this._pos.cur;return{start:offset,center:offset+centerOffset-frameSize/2+size/2,end:offset-frameSize+size,size:size,isVisible:currentStart<=offset&&offset+size<=currentStart+frameSize}},Scroller.prototype.ensureSizeInfo=function(){var frame,options;this.requiresReflow&&(this.requiresReflow=!1,frame=this.frame,options=this.options,this.frameSize=options.horizontal?frame.offsetWidth:frame.offsetHeight,this.slideeElement,this.slideeSize=5e6,options.horizontal,this._pos.end=Math.max(this.slideeSize-this.frameSize,0))},Scroller.prototype.getScrollEventName=function(){return this.options.enableNativeScroll?"scroll":"scrollanimate"},Scroller.prototype.getScrollContainerBoundingClientRect=function(){if(!this.frameResizeObserver)return addFrameResizeObserver(this),getBoundingClientRect(this.nativeScrollElement);var rect=this._frameRect;return null==rect&&(rect=getBoundingClientRect(this.nativeScrollElement),this._frameRect=rect),rect},Scroller.prototype.getScrollSlider=function(){return this.slideeElement},Scroller.prototype.addScrollEventListener=function(fn,options){this.listenerCount++,this.options.dispatchScrollEvent=0<this.listenerCount,this.options.cacheScrollPositions=this.options.dispatchScrollEvent,this.options.cacheScrollPositions&&this.addScrollCacheListener();var elem=this.options.enableNativeScroll?this.nativeScrollElement:this.frame;_dom.default.addEventListener(elem,this.getScrollEventName(),fn,options)},Scroller.prototype.removeScrollEventListener=function(fn,options){this.listenerCount=Math.max(this.listenerCount-1,0),this.options.dispatchScrollEvent=0<this.listenerCount,this.options.cacheScrollPositions=this.options.dispatchScrollEvent,this.options.cacheScrollPositions||this.removeScrollCacheListener();var elem=this.options.enableNativeScroll?this.nativeScrollElement:this.frame;_dom.default.removeEventListener(elem,this.getScrollEventName(),fn,options)},Scroller.prototype.addScrollCacheListener=function(){this.options.enableNativeScroll&&(this._scrollCacheListenerBound||(this._scrollCacheListenerBound=!0,_dom.default.addEventListener(this.nativeScrollElement,"scroll",this.onScrollForCachingFn,{passive:!0})))},Scroller.prototype.removeScrollCacheListener=function(){var elem=this.nativeScrollElement;elem&&(this._scrollCacheListenerBound=!1,_dom.default.removeEventListener(elem,"scroll",this.onScrollForCachingFn,{passive:!0}))},Scroller.prototype.getCenterPosition=function(item){this.ensureSizeInfo();var pos=this.getPos(item);return within(pos.center,pos.start,pos.end)},Scroller.prototype.isNativeScroll=function(item){return this.options.enableNativeScroll},Scroller.prototype.getScrollPosition=function(){this.options;return this.options.horizontal?this.getScrollLeft():this.getScrollTop()},Scroller.prototype.getLastScrollPosition=function(){this.options;return this.options.horizontal?this.getLastScrollLeft():this.getLastScrollTop()},Scroller.prototype.getScrollLeft=function(){var options=this.options;if(!options.enableNativeScroll)return options.horizontal?this._pos.cur:0;if(options.cacheScrollPositions){var scrollLeft=this._cachedScrollLeft;return null==scrollLeft&&(scrollLeft=this.nativeScrollElement.scrollLeft,this._cachedScrollLeft=scrollLeft),scrollLeft}return this.nativeScrollElement.scrollLeft},Scroller.prototype.getLastScrollLeft=function(){return this._cachedScrollLeft},Scroller.prototype.getScrollTop=function(){var options=this.options;if(!options.enableNativeScroll)return options.horizontal?0:this._pos.cur;if(options.cacheScrollPositions){var scrollTop=this._cachedScrollTop;return null==scrollTop&&(scrollTop=this.nativeScrollElement.scrollTop,this._cachedScrollTop=scrollTop),scrollTop}return this.nativeScrollElement.scrollTop},Scroller.prototype.getLastScrollTop=function(){return this._cachedScrollTop},Scroller.prototype.getScrollSize=function(){return this.options.horizontal?this.getScrollWidth():this.getScrollHeight()},Scroller.prototype.getScrollWidth=function(){var options=this.options;if(!options.enableNativeScroll)return options.horizontal?this.slideeSize:0;addFrameResizeObserver(this);var value=this._cachedScrollWidth;return null==value&&(value=this.nativeScrollElement.scrollWidth,this._cachedScrollWidth=value),value},Scroller.prototype.getScrollHeight=function(){var options=this.options;if(!options.enableNativeScroll)return options.horizontal?0:this.slideeSize;addFrameResizeObserver(this);var value=this._cachedScrollHeight;return null==value&&(value=this.nativeScrollElement.scrollHeight,this._cachedScrollHeight=value),value},Scroller.prototype.slideBy=function(delta,scrollOptions){delta&&this.slideTo(this._pos.dest+delta,scrollOptions)},Scroller.prototype.to=function(location,item,scrollOptions){var itemPos=this.getPos(item);itemPos&&this.slideTo(itemPos[location],scrollOptions,itemPos)},Scroller.prototype.toStart=function(item,scrollOptions){this.to("start",item,scrollOptions)},Scroller.prototype.toEnd=function(item,scrollOptions){this.to("end",item,scrollOptions)},Scroller.prototype.toCenter=function(item,scrollOptions){this.to("center",item,scrollOptions)},Scroller.prototype.destroy=function(){this.frameResizeObserver&&(this.frameResizeObserver.disconnect(),this.frameResizeObserver=null);var frame=this.frame,dragSourceElement=this.dragSourceElement;_dom.default.removeEventListener(frame,"scroll",resetScrollTop,{passive:!0});var selfScrollHandler=this.scrollHandler;selfScrollHandler&&_dom.default.removeEventListener(frame,wheelEvent,selfScrollHandler,{passive:!0});var dragStartHandler=this.dragStartHandler;dragStartHandler&&(_dom.default.removeEventListener(dragSourceElement,"touchstart",dragStartHandler,{passive:!0}),_dom.default.removeEventListener(dragSourceElement,"mousedown",dragStartHandler,{passive:!0}),_dom.default.removeEventListener(dragSourceElement,"pointerdown",dragStartHandler,{passive:!0}));var focusHandler=this.focusHandler;return focusHandler&&_dom.default.removeEventListener(frame,"focus",focusHandler,{capture:!0,passive:!0}),_dom.default.removeEventListener(frame,"click",onFrameClick,{passive:!0,capture:!0}),this.removeScrollCacheListener(),this.scrollHandler=null,this.dragSourceElement=null,this.initialized=null,this.nativeScrollElement=null,this.frame=null,this.options=null,this.slideeSize=null,this._pos=null,this.requiresReflow=null,this.frameSize=null,this.dragging=null,this.contentRect=null,this.dragHandler=null,this.dragStartHandler=null,this.onSourceClickFn=null,this.onScrollForCachingFn=null,this._cachedScrollTop=null,this._cachedScrollLeft=null,this._cachedScrollHeight=null,this._cachedScrollWidth=null,this._frameRect=null,this},Scroller.create=function(frame,options){var instance=new Scroller(frame,options);return Promise.resolve(instance)},_exports.default=Scroller});