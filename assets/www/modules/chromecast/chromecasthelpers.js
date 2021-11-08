define(["events","connectionManager","apphost"],function(events,connectionManager,appHost){"use strict";var protocols="(?:(?:http|https|rtsp|ftp):\\/\\/)",linkRegExp=RegExp("(?:(?:(?:http|https|rtsp|ftp):\\/\\/)?(?:(?:[a-z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-f0-9]{2})){1,64}(?:\\:(?:[a-z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-f0-9]{2})){1,25})?\\@)?(?:((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4]d|1dd|[1-9]?d)(.(25[0-5]|2[0-4]d|1dd|[1-9]?d)){3}))|:)))(%.+)?|(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?(?:\\/(?:(?:[a-z0-9\\/\\@\\&\\#\\~\\*\\_\\-\\+])|(?:\\%[a-f0-9]{2})|(?:[\\;\\?\\:\\.\\!\\'\\(\\)\\,\\=]+(?=(?:[a-z0-9\\/\\@\\&\\#\\~\\*\\_\\-\\+])|(?:\\%[a-f0-9]{2}))))*|\\b|$)","gi"),protocolRegExp=RegExp("^"+protocols,"i");var LinkParser={parse:function(text){for(var links=[],match=linkRegExp.exec(text);match;){var txt=match[0],pos=match.index,len=txt.length,url=function(url){return url.match(protocolRegExp)||(url="http://"+url),url}(text);links.push({pos:pos,text:txt,len:len,url:url}),match=linkRegExp.exec(text)}return links}},cache={};function clearCache(){cache={}}function addToCache(key,value){cache[key]={value:value,time:Date.now()}}return events.on(connectionManager,"localusersignedin",clearCache),events.on(connectionManager,"localusersignedout",clearCache),{getServerAddress:function(apiClient){var address,serverAddress=apiClient.serverAddress();if(!((address=(address=serverAddress).toLowerCase()).includes("127.0.0.1")?1:!!address.includes("localhost"))){if(function(address){return 1===LinkParser.parse(address).length}(serverAddress))return Promise.resolve(serverAddress);if(serverAddress.toLowerCase().startsWith("https:")&&appHost.supports("multiserver"))return Promise.resolve(serverAddress)}var cachedValue=function(key){var obj=cache[key];if(obj&&Date.now()-obj.time<18e4)return obj.value;return null}(serverAddress);return cachedValue?Promise.resolve(cachedValue):apiClient.getEndpointInfo().then(function(endpoint){return endpoint.IsInNetwork?apiClient.getPublicSystemInfo().then(function(info){return info.LocalAddress?(addToCache(serverAddress,info.LocalAddress),info.LocalAddress):(addToCache(serverAddress,serverAddress),serverAddress)}):(addToCache(serverAddress,serverAddress),serverAddress)})}}});