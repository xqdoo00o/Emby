!function(global,factory){"object"==typeof exports&&"undefined"!=typeof module?factory(exports):"function"==typeof define&&define.amd?define(["exports"],factory):factory(global.WHATWGFetch={})}(this,function(exports){"use strict";var viewClasses,isArrayBufferView,support_searchParams="URLSearchParams"in self,support_iterable="Symbol"in self&&"iterator"in Symbol,support_blob="FileReader"in self&&"Blob"in self&&function(){try{return new Blob,!0}catch(e){return!1}}(),support_formData="FormData"in self,support_arrayBuffer="ArrayBuffer"in self;function normalizeName(name){if("string"!=typeof name&&(name=String(name)),/[^a-z0-9\-#$%&'*+.^_`|~]/i.test(name))throw new TypeError("Invalid character in header field name");return name.toLowerCase()}function normalizeValue(value){return"string"!=typeof value&&(value=String(value)),value}function iteratorFor(items){var iterator={next:function(){var value=items.shift();return{done:void 0===value,value:value}}};return support_iterable&&(iterator[Symbol.iterator]=function(){return iterator}),iterator}function Headers(headers){this.map={},headers instanceof Headers?headers.forEach(function(value,name){this.append(name,value)},this):Array.isArray(headers)?headers.forEach(function(header){this.append(header[0],header[1])},this):headers&&Object.getOwnPropertyNames(headers).forEach(function(name){this.append(name,headers[name])},this)}function consumed(body){if(body.bodyUsed)return Promise.reject(new TypeError("Already read"));body.bodyUsed=!0}function fileReaderReady(reader){return new Promise(function(resolve,reject){reader.onload=function(){resolve(reader.result)},reader.onerror=function(){reject(reader.error)}})}function readBlobAsArrayBuffer(blob){var reader=new FileReader,promise=fileReaderReady(reader);return reader.readAsArrayBuffer(blob),promise}function bufferClone(buf){if(buf.slice)return buf.slice(0);var view=new Uint8Array(buf.byteLength);return view.set(new Uint8Array(buf)),view.buffer}function Body(){return this.bodyUsed=!1,this._initBody=function(body){var obj;(this._bodyInit=body)?"string"==typeof body?this._bodyText=body:support_blob&&Blob.prototype.isPrototypeOf(body)?this._bodyBlob=body:support_formData&&FormData.prototype.isPrototypeOf(body)?this._bodyFormData=body:support_searchParams&&URLSearchParams.prototype.isPrototypeOf(body)?this._bodyText=body.toString():support_arrayBuffer&&support_blob&&((obj=body)&&DataView.prototype.isPrototypeOf(obj))?(this._bodyArrayBuffer=bufferClone(body.buffer),this._bodyInit=new Blob([this._bodyArrayBuffer])):support_arrayBuffer&&(ArrayBuffer.prototype.isPrototypeOf(body)||isArrayBufferView(body))?this._bodyArrayBuffer=bufferClone(body):this._bodyText=body=Object.prototype.toString.call(body):this._bodyText="",this.headers.get("content-type")||("string"==typeof body?this.headers.set("content-type","text/plain;charset=UTF-8"):this._bodyBlob&&this._bodyBlob.type?this.headers.set("content-type",this._bodyBlob.type):support_searchParams&&URLSearchParams.prototype.isPrototypeOf(body)&&this.headers.set("content-type","application/x-www-form-urlencoded;charset=UTF-8"))},support_blob&&(this.blob=function(){var rejected=consumed(this);if(rejected)return rejected;if(this._bodyBlob)return Promise.resolve(this._bodyBlob);if(this._bodyArrayBuffer)return Promise.resolve(new Blob([this._bodyArrayBuffer]));if(this._bodyFormData)throw new Error("could not read FormData body as blob");return Promise.resolve(new Blob([this._bodyText]))},this.arrayBuffer=function(){return this._bodyArrayBuffer?consumed(this)||Promise.resolve(this._bodyArrayBuffer):this.blob().then(readBlobAsArrayBuffer)}),this.text=function(){var blob,reader,promise,rejected=consumed(this);if(rejected)return rejected;if(this._bodyBlob)return blob=this._bodyBlob,reader=new FileReader,promise=fileReaderReady(reader),reader.readAsText(blob),promise;if(this._bodyArrayBuffer)return Promise.resolve(function(buf){for(var view=new Uint8Array(buf),chars=new Array(view.length),i=0;i<view.length;i++)chars[i]=String.fromCharCode(view[i]);return chars.join("")}(this._bodyArrayBuffer));if(this._bodyFormData)throw new Error("could not read FormData body as text");return Promise.resolve(this._bodyText)},support_formData&&(this.formData=function(){return this.text().then(decode)}),this.json=function(){return this.text().then(JSON.parse)},this}support_arrayBuffer&&(viewClasses=["[object Int8Array]","[object Uint8Array]","[object Uint8ClampedArray]","[object Int16Array]","[object Uint16Array]","[object Int32Array]","[object Uint32Array]","[object Float32Array]","[object Float64Array]"],isArrayBufferView=ArrayBuffer.isView||function(obj){return obj&&-1<viewClasses.indexOf(Object.prototype.toString.call(obj))}),Headers.prototype.append=function(name,value){name=normalizeName(name),value=normalizeValue(value);var oldValue=this.map[name];this.map[name]=oldValue?oldValue+", "+value:value},Headers.prototype.delete=function(name){delete this.map[normalizeName(name)]},Headers.prototype.get=function(name){return name=normalizeName(name),this.has(name)?this.map[name]:null},Headers.prototype.has=function(name){return this.map.hasOwnProperty(normalizeName(name))},Headers.prototype.set=function(name,value){this.map[normalizeName(name)]=normalizeValue(value)},Headers.prototype.forEach=function(callback,thisArg){for(var name in this.map)this.map.hasOwnProperty(name)&&callback.call(thisArg,this.map[name],name,this)},Headers.prototype.keys=function(){var items=[];return this.forEach(function(value,name){items.push(name)}),iteratorFor(items)},Headers.prototype.values=function(){var items=[];return this.forEach(function(value){items.push(value)}),iteratorFor(items)},Headers.prototype.entries=function(){var items=[];return this.forEach(function(value,name){items.push([name,value])}),iteratorFor(items)},support_iterable&&(Headers.prototype[Symbol.iterator]=Headers.prototype.entries);var methods=["DELETE","GET","HEAD","OPTIONS","POST","PUT"];function Request(input,options){var method,upcased,body=(options=options||{}).body;if(input instanceof Request){if(input.bodyUsed)throw new TypeError("Already read");this.url=input.url,this.credentials=input.credentials,options.headers||(this.headers=new Headers(input.headers)),this.method=input.method,this.mode=input.mode,this.signal=input.signal,body||null==input._bodyInit||(body=input._bodyInit,input.bodyUsed=!0)}else this.url=String(input);if(this.credentials=options.credentials||this.credentials||"same-origin",!options.headers&&this.headers||(this.headers=new Headers(options.headers)),this.method=(method=options.method||this.method||"GET",upcased=method.toUpperCase(),-1<methods.indexOf(upcased)?upcased:method),this.mode=options.mode||this.mode||null,this.signal=options.signal||this.signal,this.referrer=null,("GET"===this.method||"HEAD"===this.method)&&body)throw new TypeError("Body not allowed for GET or HEAD requests");this._initBody(body)}function decode(body){var form=new FormData;return body.trim().split("&").forEach(function(bytes){var split,name,value;bytes&&(name=(split=bytes.split("=")).shift().replace(/\+/g," "),value=split.join("=").replace(/\+/g," "),form.append(decodeURIComponent(name),decodeURIComponent(value)))}),form}function Response(bodyInit,options){options=options||{},this.type="default",this.status=void 0===options.status?200:options.status,this.ok=200<=this.status&&this.status<300,this.statusText="statusText"in options?options.statusText:"OK",this.headers=new Headers(options.headers),this.url=options.url||"",this._initBody(bodyInit)}Request.prototype.clone=function(){return new Request(this,{body:this._bodyInit})},Body.call(Request.prototype),Body.call(Response.prototype),Response.prototype.clone=function(){return new Response(this._bodyInit,{status:this.status,statusText:this.statusText,headers:new Headers(this.headers),url:this.url})},Response.error=function(){var response=new Response(null,{status:0,statusText:""});return response.type="error",response};var redirectStatuses=[301,302,303,307,308];Response.redirect=function(url,status){if(-1===redirectStatuses.indexOf(status))throw new RangeError("Invalid status code");return new Response(null,{status:status,headers:{location:url}})},exports.DOMException=self.DOMException;try{new exports.DOMException}catch(err){exports.DOMException=function(message,name){this.message=message,this.name=name;var error=Error(message);this.stack=error.stack},exports.DOMException.prototype=Object.create(Error.prototype),exports.DOMException.prototype.constructor=exports.DOMException}function fetch(input,init){return new Promise(function(resolve,reject){var request=new Request(input,init);if(request.signal&&request.signal.aborted)return reject(new exports.DOMException("Aborted","AbortError"));var xhr=new XMLHttpRequest;function abortXhr(){xhr.abort()}xhr.onload=function(){var rawHeaders,headers,options={status:xhr.status,statusText:xhr.statusText,headers:(rawHeaders=xhr.getAllResponseHeaders()||"",headers=new Headers,rawHeaders.replace(/\r?\n[\t ]+/g," ").split(/\r?\n/).forEach(function(line){var value,parts=line.split(":"),key=parts.shift().trim();key&&(value=parts.join(":").trim(),headers.append(key,value))}),headers)};options.url="responseURL"in xhr?xhr.responseURL:options.headers.get("X-Request-URL");var body="response"in xhr?xhr.response:xhr.responseText;resolve(new Response(body,options))},xhr.onerror=function(){reject(new TypeError("Network request failed"))},xhr.ontimeout=function(){reject(new TypeError("Network request failed"))},xhr.onabort=function(){reject(new exports.DOMException("Aborted","AbortError"))},xhr.open(request.method,request.url,!0),"include"===request.credentials?xhr.withCredentials=!0:"omit"===request.credentials&&(xhr.withCredentials=!1),"responseType"in xhr&&support_blob&&(xhr.responseType="blob"),request.headers.forEach(function(value,name){xhr.setRequestHeader(name,value)}),request.signal&&(request.signal.addEventListener("abort",abortXhr),xhr.onreadystatechange=function(){4===xhr.readyState&&request.signal.removeEventListener("abort",abortXhr)}),xhr.send(void 0===request._bodyInit?null:request._bodyInit)})}fetch.polyfill=!0,self.fetch||(self.fetch=fetch,self.Headers=Headers,self.Request=Request,self.Response=Response),exports.Headers=Headers,exports.Request=Request,exports.Response=Response,exports.fetch=fetch,Object.defineProperty(exports,"__esModule",{value:!0})});