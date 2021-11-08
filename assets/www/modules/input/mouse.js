define(["exports","./../dom.js","./../browser.js","./../focusmanager.js","./../layoutmanager.js","./../common/inputmanager.js","./../emby-apiclient/events.js"],function(_exports,_dom,_browser,_focusmanager,_layoutmanager,_inputmanager,_events){Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_dom=babelHelpers.interopRequireDefault(_dom),_browser=babelHelpers.interopRequireDefault(_browser),_focusmanager=babelHelpers.interopRequireDefault(_focusmanager),_layoutmanager=babelHelpers.interopRequireDefault(_layoutmanager),_inputmanager=babelHelpers.interopRequireDefault(_inputmanager),_events=babelHelpers.interopRequireDefault(_events);var isMouseIdle,lastPointerMoveData,mouseManager={},lastMouseInputTime=Date.now();function removeIdleClasses(){isMouseIdle=!1,document.body.classList.remove("mouseIdle","mouseIdle-tv")}function addIdleClasses(){isMouseIdle=!0;var classList=document.body.classList;_layoutmanager.default.tv?classList.add("mouseIdle","mouseIdle-tv"):classList.add("mouseIdle")}var mouseInterval,undefinedString="undefined";function onPointerMove(e){var obj,eventX=e.screenX,eventY=e.screenY;typeof eventX===undefinedString&&typeof eventY===undefinedString||((obj=lastPointerMoveData)?Math.abs(eventX-obj.x)<10&&Math.abs(eventY-obj.y)<10||(obj.x=eventX,obj.y=eventY,lastMouseInputTime=Date.now(),_inputmanager.default.notify(!1),isMouseIdle&&removeIdleClasses()):lastPointerMoveData={x:eventX,y:eventY})}function onPointerEnter(e){var parent,pointerType=e.pointerType;pointerType&&"mouse"!==pointerType||isMouseIdle||(parent=_focusmanager.default.focusableParent(e.target))&&_focusmanager.default.focus(parent)}function onMouseInterval(){!isMouseIdle&&5e3<=Date.now()-lastMouseInputTime&&addIdleClasses()}function stopMouseListening(){mouseInterval&&(clearInterval(mouseInterval),mouseInterval=null),removeIdleClasses(),_dom.default.removeEventListener(document,"pointermove",onPointerMove,{passive:!0}),_dom.default.removeEventListener(document,"mousemove",onPointerMove,{passive:!0})}function startMouseListening(){(_layoutmanager.default.tv?addIdleClasses:removeIdleClasses)(),mouseInterval=mouseInterval||setInterval(onMouseInterval,5e3),window.PointerEvent?_dom.default.addEventListener(document,"pointermove",onPointerMove,{passive:!0}):_dom.default.addEventListener(document,"mousemove",onPointerMove,{passive:!0})}var listeners=[];function requestMouseListening(listener){listeners.includes(listener)||(0===listeners.length&&startMouseListening(),listeners.push(listener))}function releaseMouseListening(listener){var index=listeners.indexOf(listener);-1!==index&&listeners.splice(index,1),listeners.length||stopMouseListening()}function initMouse(){(_layoutmanager.default.tv?requestMouseListening:releaseMouseListening)("tv"),_dom.default.removeEventListener(document,window.PointerEvent?"pointerenter":"mouseenter",onPointerEnter,{capture:!0,passive:!0}),_layoutmanager.default.tv&&!_browser.default.web0s&&self.tizen&&_dom.default.addEventListener(document,window.PointerEvent?"pointerenter":"mouseenter",onPointerEnter,{capture:!0,passive:!0})}initMouse(),mouseManager.requestMouseListening=requestMouseListening,mouseManager.releaseMouseListening=releaseMouseListening,_events.default.on(_layoutmanager.default,"modechange",initMouse),_exports.default=mouseManager});