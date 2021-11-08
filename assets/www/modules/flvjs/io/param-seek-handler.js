define(["exports"],function(_exports){Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0;var ParamSeekHandler=function(){function ParamSeekHandler(paramStart,paramEnd){babelHelpers.classCallCheck(this,ParamSeekHandler),this._startName=paramStart,this._endName=paramEnd}return babelHelpers.createClass(ParamSeekHandler,[{key:"getConfig",value:function(baseUrl,range){var needAnd,url=baseUrl;return 0===range.from&&-1===range.to||(needAnd=!0,-1===url.indexOf("?")&&(url+="?",needAnd=!1),needAnd&&(url+="&"),url+="".concat(this._startName,"=").concat(range.from.toString()),-1!==range.to&&(url+="&".concat(this._endName,"=").concat(range.to.toString()))),{url:url,headers:{}}}},{key:"removeURLParameters",value:function(seekedURL){var params,baseURL=seekedURL.split("?")[0],queryIndex=seekedURL.indexOf("?");-1!==queryIndex&&(params=seekedURL.substring(queryIndex+1));var resultParams="";if(params&&0<params.length)for(var pairs=params.split("&"),i=0;i<pairs.length;i++){var pair=pairs[i].split("="),requireAnd=0<i;pair[0]!==this._startName&&pair[0]!==this._endName&&(requireAnd&&(resultParams+="&"),resultParams+=pairs[i])}return 0===resultParams.length?baseURL:baseURL+"?"+resultParams}}]),ParamSeekHandler}();_exports.default=ParamSeekHandler});