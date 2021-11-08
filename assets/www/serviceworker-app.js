importScripts("modules/alameda/alameda.js","modules/serviceworker/sync.js","./modules/serviceworker/notifications.js"),function(){"use strict";function returnFirstDependency(obj){return obj}function returnFirstDependencyDefault(obj){return Array.isArray(obj)&&(obj=obj[0]),obj.default||obj}function getDynamicImport(path){return function(){return require([path]).then(returnFirstDependencyDefault)}}function loadAppStorage(){return console.log("loading appstorage"),getDynamicImport("./modules/emby-apiclient/appstorage-cache.js")().then(function(appStorage){return appStorage=returnFirstDependencyDefault(appStorage),console.log("appstorage.init"),(appStorage.init?appStorage.init():Promise.resolve()).then(function(){return console.log("appstorage.init complete"),appStorage})})}function loadSecondLevelPolyfills(){console.log("loadSecondLevelPolyfills");var list=[];return"function"!=typeof Promise.any&&list.push("modules/polyfills/promiseany"),String.prototype.includes&&String.prototype.startsWith&&String.prototype.endsWith&&String.prototype.replaceAll||list.push("modules/polyfills/string"),Array.prototype.filter&&Array.prototype.includes&&Array.prototype.some&&Array.isArray||list.push("modules/polyfills/array"),self.crypto&&crypto.randomUUID||list.push("modules/polyfills/crypto"),require(list)}function createConnectionManager(){return require(["connectionManager","apphost","credentialprovider","events","appStorage","apiclient","wakeOnLan"]).then(function(responses){var connectionManager=responses[0],apphost=responses[1],credentialProvider=responses[2],appStorage=(responses[3],responses[4]),apiClientFactory=responses[5],wakeOnLan=responses[6],credentialProviderInstance=new credentialProvider(appStorage),secondPromises=[];return apphost.supports("sync")?secondPromises.push(require(["localassetmanager","itemrepository","useractionrepository"])):secondPromises.push(Promise.resolve([])),secondPromises.push(apphost.init()),Promise.all(secondPromises).then(function(responses){var name,localassetmanager=responses[0][0],itemrepository=responses[0][1],useractionrepository=responses[0][2];connectionManager.initialize(credentialProviderInstance,appStorage,apiClientFactory,(name="serverdiscovery",function(){return require([name]).then(function(responses){return returnFirstDependencyDefault(responses[0])})}),wakeOnLan,apphost.appName(),apphost.appVersion(),apphost.deviceName(),apphost.deviceId(),null,self.devicePixelRatio,localassetmanager,itemrepository,useractionrepository),self.ConnectionManager=connectionManager})})}function loadGlobalization(){return require(["globalize","apphost"]).then(function(responses){var globalize=responses[0];responses[1];self.urlCacheParam&&globalize.setCacheParam(self.urlCacheParam);var stringPromises=[];return stringPromises.push(function(globalize){var translations=["ar","bg-BG","ca","cs","da","de","el","en-GB","en-US","es","es-AR","es-MX","et-EE","fi","fr","fr-CA","gsw","he","hr","hu","id","it","ja","kk","ko","lt-LT","ms","nb","nl","pl","pt-BR","pt-PT","ro","ru","sk","sl-SI","sv","tr","uk","vi","zh-CN","zh-HK","zh-TW"].map(function(i){return{lang:i,path:"modules/common/strings/"+i+".json"}});return globalize.loadStrings({name:"sharedcomponents",translations:translations})}(globalize)),Promise.all(stringPromises)})}function onAppReady(){return self.ConnectionManager.getApiClients(),Promise.resolve()}function loadServiceLocator(){return console.log("loadServiceLocator"),require(["appStorage","apphost"]).then(function(responses){var appStorage=responses[0],appHost=responses[1];return getDynamicImport("./modules/common/servicelocator.js")().then(function(serviceLocator){serviceLocator.initialize({appStorage:appStorage,appHost:appHost})})})}function onAppVersionResponse(appVersion){return self.dashboardVersion=appVersion||null,console.log("appVersion: "+self.dashboardVersion),function(){define("events",[],getDynamicImport("./modules/emby-apiclient/events.js")),define("credentialprovider",[],getDynamicImport("./modules/emby-apiclient/credentials.js")),define("connectionManager",[],getDynamicImport("./modules/emby-apiclient/connectionmanager.js")),define("serverNotifications",[],getDynamicImport("./modules/common/input/api.js")),define("serviceLocator",[],getDynamicImport("./modules/common/servicelocator.js")),define("globalize",[],getDynamicImport("./modules/common/globalize.js")),define("datetime",[],getDynamicImport("./modules/common/datetime.js")),define("browser",[],getDynamicImport("./modules/browser.js")),define("browserdeviceprofile",[],getDynamicImport("./modules/browserdeviceprofile.js")),define("apphost",[],getDynamicImport("./modules/apphost.js")),define("serverdiscovery",[],getDynamicImport("./modules/emby-apiclient/serverdiscovery.js")),define("wakeOnLan",[],getDynamicImport("./modules/emby-apiclient/wakeonlan.js")),define("appStorage",[],loadAppStorage);var href,index,baseRoute,config={};"android"!==self.appMode&&(index=(href=self.location.href).lastIndexOf("/"),baseRoute=href.substr(0,index),console.log("Setting require baseUrl to "+baseRoute),config.baseUrl=baseRoute),require.config(config),define("appSettings",["appStorage"],getDynamicImport("./modules/common/appsettings.js"))}(),function(){console.log("loadFirstLevelPolyfills"),define("transfermanager",[],getDynamicImport("./modules/sync/transfermanager.js")),define("filerepository",[],getDynamicImport("./modules/sync/filerepository.js")),define("localsync",[],getDynamicImport("./modules/sync/localsync.js")),define("itemrepository",["modules/localdatabase/itemrepository"],returnFirstDependency),define("useractionrepository",["modules/localdatabase/useractionrepository"],returnFirstDependency),define("apiclient",[],getDynamicImport("./modules/emby-apiclient/apiclient.js"));var initialDependencies=[];return initialDependencies.push("modules/babelhelpers"),require(initialDependencies)}().then(loadSecondLevelPolyfills,loadSecondLevelPolyfills).then(loadServiceLocator).then(createConnectionManager).then(loadGlobalization).then(onAppReady)}self.appMode="standalone",console.log("serviceworker start"),caches.open("embyappinfo").then(function(cache){return console.log("serviceworker cache opened"),cache.match("appversion").then(function(appVersionResponse){return console.log("serviceworker cache read"),appVersionResponse?appVersionResponse.text().then(onAppVersionResponse,function(err){return console.log("error calling response.text(): "+err),onAppVersionResponse()}):onAppVersionResponse()})})}();