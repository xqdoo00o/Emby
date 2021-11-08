define(["exports","./../../shortcuts.js","./../../emby-apiclient/connectionmanager.js","./../../emby-apiclient/events.js","./../../common/globalize.js","./../../common/input/api.js","./../emby-button/emby-button.js"],function(_exports,_shortcuts,_connectionmanager,_events,_globalize,_api,_embyButton){function onClick(e){var button=this,itemInfo=function(button){if(button.hasAttribute("data-owned"))return _shortcuts.default.getItemFromChildNode(button,!0);var id=button.getAttribute("data-id"),serverId=button.getAttribute("data-serverid");return{Id:id,ServerId:serverId}}(button),id=itemInfo.Id,serverId=itemInfo.ServerId;id&&serverId&&function(apiClient,itemId,isFavorite){return apiClient.updateFavoriteStatus(apiClient.getCurrentUserId(),itemId,!isFavorite)}(_connectionmanager.default.getApiClient(serverId),id,"true"===this.getAttribute("data-isfavorite")).then(function(userData){setState(button,userData.Likes,userData.IsFavorite)})}function onUserDataChanged(e,apiClient,userData){userData.ItemId===this.getAttribute("data-id")&&setState(this,userData.Likes,userData.IsFavorite)}function setState(button,likes,isFavorite,updateAttribute){!function(button,isFavorite){var title=isFavorite?_globalize.default.translate("HeaderRemoveFromFavorites"):_globalize.default.translate("HeaderAddToFavorites");button.title=title,button.setAttribute("aria-label",title);var text=button.querySelector(".button-text");text&&(text.innerHTML=_globalize.default.translate("Favorite"))}(button,isFavorite);var icon=button.querySelector("i")||button;isFavorite?icon&&(icon.innerHTML="&#xE87D;",icon.classList.add("ratingbutton-icon-withrating")):icon&&(icon.innerHTML="&#xE87D;",icon.classList.remove("ratingbutton-icon-withrating")),!1!==updateAttribute&&button.setAttribute("data-isfavorite",isFavorite)}function clearEvents(button){var instance,name,handler;button.removeEventListener("click",onClick),(handler=(instance=button)[name="UserDataChanged"])&&(_events.default.off(_api.default,name,handler),instance[name]=null)}function bindEvents(button){var instance,name,localHandler;button.addEventListener("click",onClick),button.hasAttribute("data-owned")||(name="UserDataChanged",localHandler=onUserDataChanged.bind(instance=button),_events.default.on(_api.default,name,localHandler),instance[name]=localHandler)}Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_shortcuts=babelHelpers.interopRequireDefault(_shortcuts),_connectionmanager=babelHelpers.interopRequireDefault(_connectionmanager),_events=babelHelpers.interopRequireDefault(_events),_globalize=babelHelpers.interopRequireDefault(_globalize),_api=babelHelpers.interopRequireDefault(_api);var EmbyRatingButton=function(_EmbyButton){babelHelpers.inherits(EmbyRatingButton,_EmbyButton);var _super=_createSuper(EmbyRatingButton);function EmbyRatingButton(){var _this;babelHelpers.classCallCheck(this,EmbyRatingButton);var self=_this=_super.call(this);return babelHelpers.possibleConstructorReturn(_this,self)}return babelHelpers.createClass(EmbyRatingButton,[{key:"connectedCallback",value:function(){_embyButton.default.prototype.connectedCallback.call(this),bindEvents(this)}},{key:"disconnectedCallback",value:function(){_embyButton.default.prototype.disconnectedCallback.call(this),clearEvents(this)}},{key:"setItem",value:function(item){item?(this.setAttribute("data-id",item.Id),this.setAttribute("data-serverid",item.ServerId),setState(this,0,(item.UserData||{}).IsFavorite)):(this.removeAttribute("data-id"),this.removeAttribute("data-serverid"),this.removeAttribute("data-likes"),this.removeAttribute("data-isfavorite"))}}]),EmbyRatingButton}((_embyButton=babelHelpers.interopRequireDefault(_embyButton)).default);EmbyRatingButton.getHtml=function(isFavorite,buttonClass,iconClass){var icon;iconClass=iconClass||"",icon=(isFavorite&&(iconClass+=" ratingbutton-icon-withrating"),"&#xE87D;"),buttonClass?buttonClass+=" md-icon paper-icon-button-light":buttonClass="md-icon paper-icon-button-light",iconClass&&(buttonClass+=" "+iconClass);var title=isFavorite?_globalize.default.translate("HeaderRemoveFromFavorites"):_globalize.default.translate("HeaderAddToFavorites");return'<button title="'+title+'" aria-label="'+title+'" tabindex="-1" is="emby-ratingbutton" data-owned="true" type="button" data-action="none" class="'+buttonClass+'" data-isfavorite="'+isFavorite+'">'+icon+"</button>"},customElements.define("emby-ratingbutton",EmbyRatingButton,{extends:"button"}),_exports.default=EmbyRatingButton});