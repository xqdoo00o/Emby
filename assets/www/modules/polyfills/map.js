"undefined"==typeof Map&&function(){function Map(iterable){function betterIndexOf(value){if(value!=value||0===value)for(var i=this.length;i--&&!is(this[i],value););else i=[].indexOf.call(this,value);return i}function _set(key,value){var index=betterIndexOf.call(_keys,key);-1<index?(_items[index]=value,_values[index]=value):(_items.push([key,value]),_keys.push(key),_values.push(value))}var _items=[],_keys=[],_values=[],is=Object.is||function(a,b){return a===b?0!==a||1/a==1/b:a!=a&&b!=b},MapIterator=function(map,kind){var _index=0;return Object.create({},{next:{value:function(){if(_index<map.items().length)switch(kind){case"keys":return map.keys()[_index++];case"values":return map.values()[_index++];case"keys+values":return[].slice.call(map.items()[_index++]);default:throw new TypeError("Invalid iterator type")}throw new Error("Stop Iteration")}},iterator:{value:function(){return this}},toString:{value:function(){return"[object Map Iterator]"}}})};if(Array.isArray(iterable))iterable.forEach(function(item){if(2!==item.length)throw new TypeError("Invalid iterable passed to Map constructor");_set(item[0],item[1])});else if(void 0!==iterable)throw new TypeError("Invalid Map");return Object.create(MapPrototype,{items:{value:function(){return[].slice.call(_items)}},keys:{value:function(){return[].slice.call(_keys)}},values:{value:function(){return[].slice.call(_values)}},has:{value:function(key){return-1<betterIndexOf.call(_keys,key)}},get:{value:function(key){var index=betterIndexOf.call(_keys,key);return-1<index?_values[index]:void 0}},set:{value:_set},size:{get:function(){return _items.length}},clear:{value:function(){_keys.length=_values.length=_items.length=0}},delete:{value:function(key){var index=betterIndexOf.call(_keys,key);return-1<index&&(_keys.splice(index,1),_values.splice(index,1),_items.splice(index,1),!0)}},forEach:{value:function(callbackfn){if("function"!=typeof callbackfn)throw new TypeError("Invalid callback function given to forEach");function tryNext(){try{return iter.next()}catch(e){return}}for(var iter=this.iterator(),current=tryNext(),next=tryNext();void 0!==current;)callbackfn.apply(arguments[1],[current[1],current[0],this]),current=next,next=tryNext()}},iterator:{value:function(){return new MapIterator(this,"keys+values")}},toString:{value:function(){return"[Object Map]"}}})}var MapPrototype=Map.prototype;Map.prototype=MapPrototype=Map(),window.Map=Map}();