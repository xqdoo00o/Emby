define(["exports","./browser.js"],function(_exports,_browser){function download(url){var a=document.createElement("a");a.download="",a.href=url,a.dispatchEvent(new MouseEvent("click"))}Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=function(urls){if(!urls)throw new Error("`urls` required");if(void 0===document.createElement("a").download)return function(urls){var i=0;!function createIframe(){var frame=document.createElement("iframe");frame.style.display="none",frame.src=urls[i++],document.documentElement.appendChild(frame);var interval=setInterval(function(){"complete"!==frame.contentWindow.document.readyState&&"interactive"!==frame.contentWindow.document.readyState||(clearInterval(interval),setTimeout(function(){frame.parentNode.removeChild(frame)},1e3),i<urls.length&&createIframe())},100)}()}(urls);var delay=0;urls.forEach(function(url){return _browser.default.firefox&&!function(url){var a=document.createElement("a");return a.href=url,location.hostname===a.hostname&&location.protocol===a.protocol}(url)?setTimeout(download.bind(null,url),100*++delay):void download(url)})},_browser=babelHelpers.interopRequireDefault(_browser)});