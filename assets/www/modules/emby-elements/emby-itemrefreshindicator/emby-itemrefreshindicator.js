define(["emby-progressring","itemShortcuts","dom","serverNotifications","events","browser"],function(EmbyProgressRing,itemShortcuts,dom,serverNotifications,events,browser){"use strict";function onRefreshProgress(e,apiClient,info){var item,progress;this.itemId||(item=itemShortcuts.getItemFromChildNode(this))&&(this.itemId=item.Id),info.ItemId===this.itemId&&((progress=parseFloat(info.Progress))&&progress<100?this.classList.remove("hide"):this.classList.add("hide"),this.setProgress(progress))}var EmbyItemRefreshIndicator=function(){babelHelpers.inherits(EmbyItemRefreshIndicator,EmbyProgressRing);var _super=_createSuper(EmbyItemRefreshIndicator);function EmbyItemRefreshIndicator(){var _this;babelHelpers.classCallCheck(this,EmbyItemRefreshIndicator);var self=_this=_super.call(this);return function(){this.hasInit||(this.hasInit=!0)}.call(self),babelHelpers.possibleConstructorReturn(_this,self)}return babelHelpers.createClass(EmbyItemRefreshIndicator,[{key:"connectedCallback",value:function(){var instance,name,localHandler;EmbyProgressRing.prototype.connectedCallback.call(this),name="RefreshProgress",localHandler=onRefreshProgress.bind(instance=this),events.on(serverNotifications,name,localHandler),instance[name]=localHandler}},{key:"disconnectedCallback",value:function(){var instance,name,handler;EmbyProgressRing.prototype.disconnectedCallback.call(this),(handler=(instance=this)[name="RefreshProgress"])&&(events.off(serverNotifications,name,handler),instance[name]=null),this.itemId=null}}]),EmbyItemRefreshIndicator}();return customElements.define("emby-itemrefreshindicator",EmbyItemRefreshIndicator,{extends:"div"}),EmbyProgressRing});