define(["exports","./events.js"],function(_exports,_events){function stringEqualsIgnoreCase(str1,str2){return(str1||"").toLowerCase()===(str2||"").toLowerCase()}Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_events=babelHelpers.interopRequireDefault(_events);var Credentials=function(){function Credentials(appStorage,key){babelHelpers.classCallCheck(this,Credentials),this.key=key||"servercredentials3",this.appStorage=appStorage}return babelHelpers.createClass(Credentials,[{key:"clear",value:function(){this._credentials=null,this.appStorage.removeItem(this.key)}},{key:"credentials",value:function(data){var instance,json;return data&&function(instance,data){instance._credentials=data;var json=JSON.stringify(data);instance.appStorage.setItem(instance.key,json),_events.default.trigger(instance,"credentialsupdated",[{credentials:data,credentialsJson:json}])}(this,data),(instance=this)._credentials||(json=instance.appStorage.getItem(instance.key)||"{}",console.log("credentials initialized with: ".concat(json)),instance._credentials=JSON.parse(json),instance._credentials.Servers=instance._credentials.Servers||[]),this._credentials}},{key:"addOrUpdateServer",value:function(list,server,serverUrlToMatch){if(!server.Id&&!serverUrlToMatch)throw new Error("Server.Id cannot be null or empty");var existing;return server.Id?existing=list.filter(function(_ref){return _ref.Id===server.Id})[0]:serverUrlToMatch&&(existing=list.filter(function(s){return stringEqualsIgnoreCase(s.ManualAddress,serverUrlToMatch)||stringEqualsIgnoreCase(s.LocalAddress,serverUrlToMatch)||stringEqualsIgnoreCase(s.RemoteAddress,serverUrlToMatch)})[0]),existing?(existing.DateLastAccessed=Math.max(existing.DateLastAccessed||0,server.DateLastAccessed||0),server.AccessToken&&(existing.AccessToken=server.AccessToken,existing.UserId=server.UserId),server.ExchangeToken&&(existing.ExchangeToken=server.ExchangeToken),server.RemoteAddress&&(existing.RemoteAddress=server.RemoteAddress),server.ManualAddress&&(existing.ManualAddress=server.ManualAddress),null!=server.ManualAddressOnly&&(existing.ManualAddressOnly=server.ManualAddressOnly),null!=server.IsLocalServer&&(existing.IsLocalServer=server.IsLocalServer),server.LocalAddress&&(existing.LocalAddress=server.LocalAddress),server.Name&&(existing.Name=server.Name),server.WakeOnLanInfos&&server.WakeOnLanInfos.length&&(existing.WakeOnLanInfos=server.WakeOnLanInfos),null!=server.LastConnectionMode&&(existing.LastConnectionMode=server.LastConnectionMode),server.ConnectServerId&&(existing.ConnectServerId=server.ConnectServerId),existing):(list.push(server),server)}}]),Credentials}();_exports.default=Credentials});