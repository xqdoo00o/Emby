define(["browser","layoutManager","css!./emby-checkbox"],function(browser,layoutManager){"use strict";function onKeyDown(e){return browser.tizen&&32===e.keyCode||13===e.keyCode?(e.preventDefault(),this.checked=!this.checked,this.dispatchEvent(new CustomEvent("change",{bubbles:!0})),!1):void 0}var EmbyCheckbox=function(_HTMLInputElement){babelHelpers.inherits(EmbyCheckbox,_HTMLInputElement);var _super=_createSuper(EmbyCheckbox);function EmbyCheckbox(){var _this;babelHelpers.classCallCheck(this,EmbyCheckbox);var self=_this=_super.call(this);return babelHelpers.possibleConstructorReturn(_this,self)}return babelHelpers.createClass(EmbyCheckbox,[{key:"connectedCallback",value:function(){var labelElement,labelTextElement;this.hasAttribute("data-classes")||(layoutManager.tv?this.classList.add("emby-checkbox","emby-checkbox-tv"):this.classList.add("emby-checkbox"),labelElement=this.parentNode,layoutManager.tv?labelElement.classList.add("emby-checkbox-label","emby-checkbox-label-tv"):labelElement.classList.add("emby-checkbox-label"),(labelTextElement=labelElement.querySelector("span"))&&(layoutManager.tv?labelTextElement.classList.add("checkboxLabel","checkboxLabel-tv"):labelTextElement.classList.add("checkboxLabel"))),this.addEventListener("keydown",onKeyDown)}},{key:"disconnectedCallback",value:function(){this.removeEventListener("keydown",onKeyDown)}}]),EmbyCheckbox}(babelHelpers.wrapNativeSuper(HTMLInputElement));customElements.define("emby-checkbox",EmbyCheckbox,{extends:"input"})});