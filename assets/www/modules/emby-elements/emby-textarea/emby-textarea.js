define(["css!./emby-textarea","emby-input"],function(){"use strict";function onInit(){this.hasInit||(this.hasInit=!0)}var EmbyTextArea=function(_HTMLTextAreaElement){babelHelpers.inherits(EmbyTextArea,_HTMLTextAreaElement);var _super=_createSuper(EmbyTextArea);function EmbyTextArea(){var _this;babelHelpers.classCallCheck(this,EmbyTextArea);var self=_this=_super.call(this);return onInit.call(self),babelHelpers.possibleConstructorReturn(_this,self)}return babelHelpers.createClass(EmbyTextArea,[{key:"connectedCallback",value:function(){onInit.call(this),function(){var label,labelText;this.classList.contains("emby-textarea")||(this.hasAttribute("rows")||(this.rows=10),this.classList.add("emby-textarea"),(label=this.closest("label"))&&(labelText=this.getAttribute("label")||"",label.insertAdjacentHTML("afterbegin",'<div class="emby-textarea-labeltext">'+labelText+"</div>"),label.classList.add("emby-textarea-label")))}.call(this)}}]),EmbyTextArea}(babelHelpers.wrapNativeSuper(HTMLTextAreaElement));customElements.define("emby-textarea",EmbyTextArea,{extends:"textarea"})});