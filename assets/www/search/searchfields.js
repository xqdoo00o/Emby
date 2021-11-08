define(["appRouter","globalize","require","connectionManager","layoutManager","events","browser","alphaPicker","emby-input","flexStyles","material-icons","css!./searchfields","emby-linkbutton"],function(appRouter,globalize,require,connectionManager,layoutManager,events,browser,AlphaPicker){"use strict";function onSearchTimeout(){var value=((value=this.nextSearchValue)||"").trim();events.trigger(this,"search",[value]);var context=this.options.element;value||layoutManager.tv?(this.mode="search",context.querySelector(".searchSuggestions").classList.add("hide")):(this.mode="suggestions",function(instance,context,apiClient){var options={SortBy:"IsFavoriteOrLiked,Random",IncludeItemTypes:"Movie,Series,MusicArtist",Limit:20,Recursive:!0,ImageTypeLimit:0,EnableImages:!1,ParentId:instance.options.parentId,EnableTotalRecordCount:!1};apiClient.getItems(apiClient.getCurrentUserId(),options).then(function(result){"suggestions"!==instance.mode&&(result.Items=[]);var html=result.Items.map(function(i){var itemHtml='<div><a is="emby-linkbutton" class="button-link" style="display:inline-block;padding:.5em 1em;" href="'+appRouter.getRouteUrl(i)+'">';return itemHtml+=i.Name,itemHtml+="</a></div>"}).join(""),searchSuggestions=context.querySelector(".searchSuggestions");searchSuggestions.querySelector(".searchSuggestionsList").innerHTML=html,result.Items.length?searchSuggestions.classList.remove("hide"):searchSuggestions.classList.add("hide")})}(this,context,connectionManager.getApiClient(this.options.serverId)))}function triggerSearch(instance,value,immediate){instance.searchTimeout&&clearTimeout(instance.searchTimeout),instance.nextSearchValue=value;var delay=immediate?0:500;instance.searchTimeout=setTimeout(onSearchTimeout.bind(instance),delay)}function initAlphaPicker(alphaPickerElement,instance){instance.alphaPicker=new AlphaPicker({element:alphaPickerElement,mode:"keyboard"}),alphaPickerElement.addEventListener("alphavalueclicked",function(e){var val,value=e.detail.value,txtSearch=this.options.element.querySelector(".searchfields-txtSearch");"backspace"===value?(val=txtSearch.value,txtSearch.value=val.length?val.substring(0,val.length-1):""):(-1===txtSearch.maxLength||txtSearch.value.length<txtSearch.maxLength)&&(txtSearch.value+=value),txtSearch.dispatchEvent(new CustomEvent("input",{bubbles:!0}))}.bind(instance))}function embed(elem,instance,options){return require(["text!./searchfields.template.html"]).then(function(responses){elem.innerHTML=globalize.translateDocument(responses[0]),(browser.tizen||browser.orsay||browser.web0s||browser.netcast)&&elem.querySelector(".searchfields-txtSearch").setAttribute("readonly","readonly"),elem.classList.add("searchFields");var alphaPickerElement,txtSearch=elem.querySelector(".searchfields-txtSearch");layoutManager.tv&&(alphaPickerElement=elem.querySelector(".alphaPicker"),elem.querySelector(".alphaPicker").classList.remove("hide"),initAlphaPicker(alphaPickerElement,instance)),txtSearch.addEventListener("input",function(e){triggerSearch(this,e.target.value)}.bind(instance)),options.value&&(txtSearch.value=options.value,instance.firstLoad&&triggerSearch(instance,options.value,!0)),instance.focus()})}function SearchFields(options){embed((this.options=options).element,this,options)}return SearchFields.prototype.getSearchTerm=function(){var txt=this.options.element.querySelector(".searchfields-txtSearch");return txt&&txt.value||null},SearchFields.prototype.pause=function(){},SearchFields.prototype.resume=function(){this.firstLoad||(this.firstLoad=!0,onSearchTimeout.call(this))},SearchFields.prototype.focus=function(){this.options.element.querySelector(".searchfields-txtSearch").focus()},SearchFields.prototype.destroy=function(){var options=this.options;options&&options.element.classList.remove("searchFields"),this.options=null;var alphaPicker=this.alphaPicker;alphaPicker&&alphaPicker.destroy(),this.alphaPicker=null;var searchTimeout=this.searchTimeout;searchTimeout&&clearTimeout(searchTimeout),this.searchTimeout=null,this.nextSearchValue=null},SearchFields});