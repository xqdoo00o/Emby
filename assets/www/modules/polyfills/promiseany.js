"function"!=typeof Promise.any&&(Promise.any=function(n){"use strict";return new Promise(function(e,o,t,i){t=[],i=n.map(function(n,r){return Promise.resolve(n).then(e,function(n){return t[r]=n,--i||o({errors:t})})}).length})});