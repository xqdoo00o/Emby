Element.prototype.matches||(Element.prototype.matches=Element.prototype.matchesSelector||Element.prototype.mozMatchesSelector||Element.prototype.msMatchesSelector||Element.prototype.oMatchesSelector||Element.prototype.webkitMatchesSelector||function(s){"use strict";for(var matches=(this.document||this.ownerDocument).querySelectorAll(s),i=matches.length;0<=--i&&matches.item(i)!==this;);return-1<i}),Element.prototype.closest||(Element.prototype.closest=function(s){"use strict";var el=this;do{if(Element.prototype.matches.call(el,s))return el;el=el.parentElement||el.parentNode}while(null!==el&&1===el.nodeType);return null});