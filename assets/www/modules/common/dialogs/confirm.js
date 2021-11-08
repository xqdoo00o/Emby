define(["exports","./../globalize.js","./../../dialog/dialog.js"],function(_exports,_globalize,_dialog){Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=function(text,title){var options;options="string"==typeof text?{title:title,text:text}:text;var items=[];items.push({name:options.cancelText||_globalize.default.translate("Cancel"),id:"cancel",type:"cancel"===options.primary?"submit":"cancel"}),items.push({name:options.confirmText||_globalize.default.translate("ButtonOk"),id:"ok",type:"cancel"===options.primary?"cancel":"submit"}),"cancel"!==options.primary&&items.reverse();return options.buttons=items,(0,_dialog.default)(options).then(function(result){return"ok"===result?Promise.resolve():Promise.reject(result)})},_globalize=babelHelpers.interopRequireDefault(_globalize),_dialog=babelHelpers.interopRequireDefault(_dialog)});