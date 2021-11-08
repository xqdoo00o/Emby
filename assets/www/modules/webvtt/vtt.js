define(["exports"],function(_exports){Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0;var MaxVerticalLinePositionPercent=92,_objCreate=Object.create||function(o){if(1!==arguments.length)throw new Error("Object.create shim only accepts one parameter.");return F.prototype=o,new F};function F(){}function ParsingError(errorData,message){this.name="ParsingError",this.code=errorData.code,this.message=message||errorData.message}function parseTimeStamp(input){function computeSeconds(h,m,s,f){return 3600*(0|h)+60*(0|m)+(0|s)+(0|f)/1e3}var m=input.match(/^(\d+):(\d{2})(:\d{2})?\.(\d{3})/);return m?m[3]?computeSeconds(m[1],m[2],m[3].replace(":",""),m[4]):59<m[1]?computeSeconds(m[1],m[2],0,m[4]):computeSeconds(0,m[1],m[2],m[4]):null}function Settings(){this.values=_objCreate(null)}function parseOptions(input,callback,keyValueDelim,groupDelim){var kv,groups=groupDelim?input.split(groupDelim):[input];for(var i in groups){"string"==typeof groups[i]&&(2===(kv=groups[i].split(keyValueDelim)).length&&callback(kv[0],kv[1]))}}function parseCue(input,cue,regionList){var oInput=input;function consumeTimeStamp(){var ts=parseTimeStamp(input);if(null===ts)throw new ParsingError(ParsingError.Errors.BadTimeStamp,"Malformed timestamp: "+oInput);return input=input.replace(/^[^\sa-zA-Z-]+/,""),ts}function skipWhitespace(){input=input.replace(/^\s+/,"")}if(skipWhitespace(),cue.startTime=consumeTimeStamp(),skipWhitespace(),"--\x3e"!==input.substr(0,3))throw new ParsingError(ParsingError.Errors.BadTimeStamp,"Malformed time stamp (time stamps must be separated by '--\x3e'): "+oInput);input=input.substr(3),skipWhitespace(),cue.endTime=consumeTimeStamp(),skipWhitespace(),function(input,cue){var settings=new Settings;parseOptions(input,function(k,v){switch(k){case"region":for(var i=regionList.length-1;0<=i;i--)if(regionList[i].id===v){settings.set(k,regionList[i].region);break}break;case"vertical":settings.alt(k,v,["rl","lr"]);break;case"line":var vals=v.split(","),vals0=vals[0];settings.integer(k,vals0),settings.percent(k,vals0)&&settings.set("snapToLines",!1),settings.alt(k,vals0,["auto"]),2===vals.length&&settings.alt("lineAlign",vals[1],["start","center","end"]);break;case"position":var _vals=v.split(",");settings.percent(k,_vals[0]),2===_vals.length&&settings.alt("positionAlign",_vals[1],["start","center","end"]);break;case"size":settings.percent(k,v);break;case"align":settings.alt(k,v,["start","center","end","left","right"])}},/:/,/\s/),cue.region=settings.get("region",null),cue.vertical=settings.get("vertical",""),cue.line=settings.get("line","auto"),cue.lineAlign=settings.get("lineAlign","start"),cue.snapToLines=settings.get("snapToLines",!0),cue.size=settings.get("size",100);try{cue.align=settings.get("align","center")}catch(e){cue.align=settings.get("align","middle")}cue.position=settings.get("position","auto"),cue.positionAlign=settings.get("positionAlign",{start:"start",left:"start",middle:"center",center:"center",end:"end",right:"end"},cue.align)}(input,cue)}((ParsingError.prototype=_objCreate(Error.prototype)).constructor=ParsingError).Errors={BadSignature:{code:0,message:"Malformed WebVTT signature."},BadTimeStamp:{code:1,message:"Malformed time stamp."}},Settings.prototype={set:function(k,v){this.get(k)||""===v||(this.values[k]=v)},get:function(k,dflt,defaultKey){return defaultKey?this.has(k)?this.values[k]:dflt[defaultKey]:this.has(k)?this.values[k]:dflt},has:function(k){return k in this.values},alt:function(k,v,a){for(var n=0;n<a.length;++n)if(v===a[n]){this.set(k,v);break}},integer:function(k,v){/^-?\d+$/.test(v)&&this.set(k,parseInt(v,10))},percent:function(k,v){return!!(v.match(/^([\d]{1,3})(\.[\d]*)?%$/)&&0<=(v=parseFloat(v))&&v<=100)&&(this.set(k,v),!0)}};var ESCAPE={"&amp;":"&","&lt;":"<","&gt;":">","&lrm;":"‎","&rlm;":"‏","&nbsp;":" "},TAG_NAME={c:"span",i:"i",b:"b",u:"u",ruby:"ruby",rt:"rt",v:"span",lang:"span"},TAG_ANNOTATION={v:"title",lang:"lang"},NEEDS_PARENT={rt:"ruby"};function parseContent(window,input){function unescape1(e){return ESCAPE[e]}for(var t,rootDiv=window.document.createElement("div"),current=rootDiv,tagStack=[];null!==(t=function(){if(!input)return null;var result,m=input.match(/^([^<]*)(<[^>]*>?)?/);return result=m[1]?m[1]:m[2],input=input.substr(result.length),result}());)if("<"!==t[0])current.appendChild(window.document.createTextNode(function(s){for(var sMatch;sMatch=s.match(/&(amp|lt|gt|lrm|rlm|nbsp);/);)s=s.replace(sMatch[0],unescape1);return s}(t)));else{if("/"===t[1]){tagStack.length&&tagStack[tagStack.length-1]===t.substr(2).replace(">","")&&(tagStack.pop(),current=current.parentNode);continue}var ts=parseTimeStamp(t.substr(1,t.length-2)),node=void 0;if(ts){node=window.document.createProcessingInstruction("timestamp",ts),current.appendChild(node);continue}var m=t.match(/^<([^.\s/0-9>]+)(\.[^\s\\>]+)?([^>\\]+)?(\\?)>?$/);if(!m)continue;if(!(node=function(type,annotation){var tagName=TAG_NAME[type];if(!tagName)return null;var element=window.document.createElement(tagName);element.localName=tagName;var name=TAG_ANNOTATION[type];return name&&annotation&&(element[name]=annotation.trim()),element}(m[1],m[3])))continue;if(!function(current,element){return!NEEDS_PARENT[element.localName]||NEEDS_PARENT[element.localName]===current.localName}(current,node))continue;m[2]&&(node.className=m[2].substr(1).replace("."," ")),tagStack.push(m[1]),current.appendChild(node),current=node}return rootDiv}var strongRTLRanges=[[1470,1470],[1472,1472],[1475,1475],[1478,1478],[1488,1514],[1520,1524],[1544,1544],[1547,1547],[1549,1549],[1563,1563],[1566,1610],[1645,1647],[1649,1749],[1765,1766],[1774,1775],[1786,1805],[1807,1808],[1810,1839],[1869,1957],[1969,1969],[1984,2026],[2036,2037],[2042,2042],[2048,2069],[2074,2074],[2084,2084],[2088,2088],[2096,2110],[2112,2136],[2142,2142],[2208,2208],[2210,2220],[8207,8207],[64285,64285],[64287,64296],[64298,64310],[64312,64316],[64318,64318],[64320,64321],[64323,64324],[64326,64449],[64467,64829],[64848,64911],[64914,64967],[65008,65020],[65136,65140],[65142,65276],[67584,67589],[67592,67592],[67594,67637],[67639,67640],[67644,67644],[67647,67669],[67671,67679],[67840,67867],[67872,67897],[67903,67903],[67968,68023],[68030,68031],[68096,68096],[68112,68115],[68117,68119],[68121,68147],[68160,68167],[68176,68184],[68192,68223],[68352,68405],[68416,68437],[68440,68466],[68472,68479],[68608,68680],[126464,126467],[126469,126495],[126497,126498],[126500,126500],[126503,126503],[126505,126514],[126516,126519],[126521,126521],[126523,126523],[126530,126530],[126535,126535],[126537,126537],[126539,126539],[126541,126543],[126545,126546],[126548,126548],[126551,126551],[126553,126553],[126555,126555],[126557,126557],[126559,126559],[126561,126562],[126564,126564],[126567,126570],[126572,126578],[126580,126583],[126585,126588],[126590,126590],[126592,126601],[126603,126619],[126625,126627],[126629,126633],[126635,126651],[1114109,1114109]];function determineBidi(cueDiv){var nodeStack=[],text="";if(!cueDiv||!cueDiv.childNodes)return"ltr";function pushNodes(nodeStack,node){for(var i=node.childNodes.length-1;0<=i;i--)nodeStack.push(node.childNodes[i])}for(pushNodes(nodeStack,cueDiv);text=function nextTextNode(nodeStack){if(!nodeStack||!nodeStack.length)return null;var node=nodeStack.pop(),text=node.textContent||node.innerText;if(text){var m=text.match(/^.*(\n|\r)/);return m?m[nodeStack.length=0]:text}return"ruby"===node.tagName?nextTextNode(nodeStack):node.childNodes?(pushNodes(nodeStack,node),nextTextNode(nodeStack)):void 0}(nodeStack);)for(var i=0;i<text.length;i++)if(function(charCode){for(var i=0;i<strongRTLRanges.length;i++){var currentRange=strongRTLRanges[i];if(charCode>=currentRange[0]&&charCode<=currentRange[1])return 1}}(text.charCodeAt(i)))return"rtl";return"ltr"}function StyleBox(){}StyleBox.prototype.applyStyles=function(styles,div){div=div||this.div,Object.assign(div.style,styles)},StyleBox.prototype.formatStyle=function(val,unit){return 0===val?0:val+unit};var supportsFlowRelativeTextAlign=CSS.supports("text-align","start");function CueStyleBox(window,cue,options){StyleBox.call(this),this.cue=cue,options=options||{},this.cueDiv=parseContent(window,cue.text);var value,styles=Object.assign({position:"relative",left:0,right:0,top:0,bottom:0,display:"inline-block",padding:".08em .5em"},options.textStyle);styles.writingMode=cue.vertical?"lr"===cue.vertical?"vertical-lr":"vertical-rl":"horizontal-tb",styles.unicodeBidi="plaintext",this.applyStyles(styles,this.cueDiv),this.div=window.document.createElement("div"),(styles={textAlign:"middle"===(value=cue.align||"center")?"center":"start"!==value||supportsFlowRelativeTextAlign?"end"!==value||supportsFlowRelativeTextAlign?value:"right":"left",whiteSpace:"pre-line",position:"absolute"}).direction=determineBidi(this.cueDiv),styles.writingMode=cue.vertical?"lr"===cue.vertical?"vertical-lr":"vertical-rl":"horizontal-tb",styles.unicodeBidi="plaintext",this.applyStyles(styles),this.div.appendChild(this.cueDiv);var textPos=0,cueSize=cue.size||100;switch(cue.positionAlign){case"start":textPos=cue.position;break;case"center":textPos=cue.position-cueSize/2;break;case"end":textPos=cue.position-cueSize}cue.vertical?this.applyStyles({top:this.formatStyle(textPos,"%"),height:this.formatStyle(cueSize,"%")}):this.applyStyles({left:this.formatStyle(textPos,"%"),width:this.formatStyle(cueSize,"%")}),this.move=function(box){this.applyStyles({top:this.formatStyle(box.top,"px"),bottom:this.formatStyle(box.bottom,"px"),left:this.formatStyle(box.left,"px"),right:this.formatStyle(box.right,"px"),height:this.formatStyle(box.height,"px"),width:this.formatStyle(box.width,"px")})}}function BoxPosition(obj){var lh,height,width,top,rects;obj.div&&(height=obj.div.offsetHeight,width=obj.div.offsetWidth,top=obj.div.offsetTop,(rects=(rects=obj.div.childNodes)&&rects[0])&&rects.getClientRects&&(rects=rects.getClientRects()),obj=obj.div.getBoundingClientRect(),lh=rects?Math.max(rects[0]&&rects[0].height||0,obj.height/rects.length):0),this.left=obj.left,this.right=obj.right,this.top=obj.top||top,this.height=obj.height||height,this.bottom=obj.bottom||top+(obj.height||height),this.width=obj.width||width,this.lineHeight=void 0!==lh?lh:obj.lineHeight}function moveBoxToLinePosition(window,styleBox,containerBox,boxPositions){var size,boxPosition=new BoxPosition(styleBox),cue=styleBox.cue,linePos=function(cue){return"number"==typeof cue.line&&(!1!==cue.snapToLines||0<=cue.line&&cue.line<=100)?cue.line:-1}(cue),axis=[];if(!1!==cue.snapToLines){switch(cue.vertical||""){case"":axis=["+y","-y"],size="height";break;case"rl":axis=["+x","-x"],size="width";break;case"lr":axis=["-x","+x"],size="width"}var step=boxPosition.lineHeight,position=step*Math.round(linePos),maxPosition=containerBox[size]+step,initialAxis=axis[0];Math.abs(position)>maxPosition&&(position=position<0?-1:1,position*=Math.ceil(maxPosition/step)*step),linePos<0&&(position+=cue.vertical?containerBox.width:Math.floor(containerBox.height*(MaxVerticalLinePositionPercent/100)),axis=axis.reverse()),boxPosition.move(initialAxis,position)}else{var calculatedPercentage=boxPosition.lineHeight/containerBox.height*100;switch(cue.lineAlign){case"center":linePos-=calculatedPercentage/2;break;case"end":linePos-=calculatedPercentage,linePos=Math.max(linePos,MaxVerticalLinePositionPercent)}switch(cue.vertical||""){case"":styleBox.applyStyles({top:styleBox.formatStyle(linePos,"%")});break;case"rl":styleBox.applyStyles({left:styleBox.formatStyle(linePos,"%")});break;case"lr":styleBox.applyStyles({right:styleBox.formatStyle(linePos,"%")})}axis=["+y","-x","+x","-y"],boxPosition=new BoxPosition(styleBox)}var bestPosition=function(b,axis){for(var bestPosition,specifiedPosition=new BoxPosition(b),percentage=1,i=0;i<axis.length;i++){for(;b.overlapsOppositeAxis(containerBox,axis[i])||b.within(containerBox)&&b.overlapsAny(boxPositions);)b.move(axis[i]);if(b.within(containerBox))return b;var p=b.intersectPercentage(containerBox);p<percentage&&(bestPosition=new BoxPosition(b),percentage=p),b=new BoxPosition(specifiedPosition)}return bestPosition||specifiedPosition}(boxPosition,axis);styleBox.move(bestPosition.toCSSCompatValues(containerBox))}function WebVTT(){}(CueStyleBox.prototype=_objCreate(StyleBox.prototype)).constructor=CueStyleBox,BoxPosition.prototype.move=function(axis,toMove){switch(toMove=void 0!==toMove?toMove:this.lineHeight,axis){case"+x":this.left+=toMove,this.right+=toMove;break;case"-x":this.left-=toMove,this.right-=toMove;break;case"+y":this.top+=toMove,this.bottom+=toMove;break;case"-y":this.top-=toMove,this.bottom-=toMove}},BoxPosition.prototype.overlaps=function(b2){return this.left<b2.right&&this.right>b2.left&&this.top<b2.bottom&&this.bottom>b2.top},BoxPosition.prototype.overlapsAny=function(boxes){for(var i=0;i<boxes.length;i++)if(this.overlaps(boxes[i]))return!0;return!1},BoxPosition.prototype.within=function(container){return this.top>=container.top&&this.bottom<=container.bottom&&this.left>=container.left&&this.right<=container.right},BoxPosition.prototype.overlapsOppositeAxis=function(container,axis){switch(axis){case"+x":return this.left<container.left;case"-x":return this.right>container.right;case"+y":return this.top<container.top;case"-y":return this.bottom>container.bottom}},BoxPosition.prototype.intersectPercentage=function(b2){return Math.max(0,Math.min(this.right,b2.right)-Math.max(this.left,b2.left))*Math.max(0,Math.min(this.bottom,b2.bottom)-Math.max(this.top,b2.top))/(this.height*this.width)},BoxPosition.prototype.toCSSCompatValues=function(reference){return{top:this.top-reference.top,bottom:reference.bottom-this.bottom,left:this.left-reference.left,right:reference.right-this.right,height:this.height,width:this.width}},BoxPosition.getSimpleBoxPosition=function(obj){var height=obj.div?obj.div.offsetHeight:obj.tagName?obj.offsetHeight:0,width=obj.div?obj.div.offsetWidth:obj.tagName?obj.offsetWidth:0,top=obj.div?obj.div.offsetTop:obj.tagName?obj.offsetTop:0;return{left:(obj=obj.div?obj.div.getBoundingClientRect():obj.tagName?obj.getBoundingClientRect():obj).left,right:obj.right,top:obj.top||top,height:obj.height||height,bottom:obj.bottom||top+(obj.height||height),width:obj.width||width}},WebVTT.StringDecoder=function(){return{decode:function(data){if(!data)return"";if("string"!=typeof data)throw new Error("Error - expected string data.");return decodeURIComponent(encodeURIComponent(data))}}},WebVTT.convertCueToDOMTree=function(window,cuetext){return window&&cuetext?parseContent(window,cuetext):null},WebVTT.processCues=function(window,cues,overlay,options){if(!window||!cues||!overlay)return null;for(;overlay.firstChild;)overlay.removeChild(overlay.firstChild);if(function(cues){for(var i=0;i<cues.length;i++)if(cues[i].hasBeenReset||!cues[i].displayState)return 1}(cues)){var boxPositions=[],containerBox=BoxPosition.getSimpleBoxPosition(overlay);!function(){for(var styleBox,cue,_i=0;_i<cues.length;_i++)cue=cues[_i],styleBox=new CueStyleBox(window,cue,options),overlay.appendChild(styleBox.div),moveBoxToLinePosition(0,styleBox,containerBox,boxPositions),cue.displayState=styleBox.div,boxPositions.push(BoxPosition.getSimpleBoxPosition(styleBox))}()}else for(var i=0;i<cues.length;i++)overlay.appendChild(cues[i].displayState)},(WebVTT.Parser=function(window,decoder,options){this.window=window,this.state="INITIAL",this.buffer="",this.decoder=decoder||new TextDecoder("utf8"),this.options=options||{},this.regionList=[]}).prototype={reportOrThrowError:function(e){if(!(e instanceof ParsingError))throw e;this.onparsingerror&&this.onparsingerror(e)},parse:function(data){var line,self=this;function collectNextLine(){for(var buffer=self.buffer,pos=0;pos<buffer.length&&"\r"!==buffer[pos]&&"\n"!==buffer[pos];)++pos;var line=buffer.substr(0,pos);return"\r"===buffer[pos]&&++pos,"\n"===buffer[pos]&&++pos,self.buffer=buffer.substr(pos),line}function parseHeader(input){parseOptions(input,function(k,v){var input,region,settings;"Region"===k&&(input=v,settings=new Settings,parseOptions(input,function(k,v){switch(k){case"id":settings.set(k,v);break;case"width":settings.percent(k,v);break;case"lines":settings.integer(k,v);break;case"regionanchor":case"viewportanchor":var xy=v.split(",");if(2!==xy.length)break;var anchor=new Settings;if(anchor.percent("x",xy[0]),anchor.percent("y",xy[1]),!anchor.has("x")||!anchor.has("y"))break;settings.set(k+"X",anchor.get("x")),settings.set(k+"Y",anchor.get("y"));break;case"scroll":settings.alt(k,v,["up"])}},/=/,/\s/),settings.has("id")&&((region=new self.window.VTTRegion).width=settings.get("width",100),region.lines=settings.get("lines",3),region.regionAnchorX=settings.get("regionanchorX",0),region.regionAnchorY=settings.get("regionanchorY",100),region.viewportAnchorX=settings.get("viewportanchorX",0),region.viewportAnchorY=settings.get("viewportanchorY",100),region.scroll=settings.get("scroll",""),self.onregion&&self.onregion(region),self.regionList.push({id:settings.get("id"),region:region})))},/:/)}data&&(self.buffer+=self.decoder.decode(data,{stream:!0}));try{if("INITIAL"===self.state){if(!/\r\n|\n/.test(self.buffer))return this;var m=(line=collectNextLine()).match(/^WEBVTT([ \t].*)?$/);if(!m||!m[0])throw new ParsingError(ParsingError.Errors.BadSignature);self.state="HEADER"}for(var alreadyCollectedLine=!1;self.buffer;){if(!/\r\n|\n/.test(self.buffer))return this;switch(alreadyCollectedLine?alreadyCollectedLine=!1:line=collectNextLine(),self.state){case"HEADER":/:/.test(line)?parseHeader(line):line||(self.state="ID");continue;case"NOTE":line||(self.state="ID");continue;case"ID":if(/^NOTE($|[ \t])/.test(line)){self.state="NOTE";break}if(!line)continue;if(self.cue={startTime:0,endTime:0,text:""},self.state="CUE",-1===line.indexOf("--\x3e")){self.cue.id=line;continue}case"CUE":try{parseCue(line,self.cue,self.regionList)}catch(e){self.reportOrThrowError(e),self.cue=null,self.state="BADCUE";continue}self.state="CUETEXT";continue;case"CUETEXT":var hasSubstring=-1!==line.indexOf("--\x3e");if(!line||hasSubstring&&(alreadyCollectedLine=!0)){self.triggerOnCue(self.cue),self.cue=null,self.state="ID";continue}self.cue.text&&(self.cue.text+="\n"),self.cue.text+=line;continue;case"BADCUE":line||(self.state="ID");continue}}}catch(e){self.reportOrThrowError(e),"CUETEXT"===self.state&&self.cue&&self.triggerOnCue(self.cue),self.cue=null,self.state="INITIAL"===self.state?"BADWEBVTT":"BADCUE"}return this},triggerOnCue:function(cue){if(!this.options.usePlainObjects){var nativeCue=new(self.window.VTTCue||self.window.TextTrackCue)(cue.startTime,cue.endTime,cue.text);try{Object.assign(nativeCue,cue)}catch(err){console.log("Unable to set cue properties: "+err)}cue=nativeCue}this.oncue&&this.oncue(cue)},flush:function(){try{if(this.buffer+=this.decoder.decode(),!this.cue&&"HEADER"!==this.state||(this.buffer+="\n\n",this.parse()),"INITIAL"===this.state)throw new ParsingError(ParsingError.Errors.BadSignature)}catch(e){this.reportOrThrowError(e)}return this.onflush&&this.onflush(),this}},_exports.default=WebVTT});