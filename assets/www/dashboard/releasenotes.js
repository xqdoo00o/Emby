define(["dom","emby-select"],function(dom){"use strict";function onVersionChange(e){var value=this.value;value&&ApiClient.getJSON(ApiClient.getUrl("System/ReleaseNotes",{Version:value})).then(function(releaseNotes){e.target.closest(".page").querySelector(".releaseNotes").innerHTML=releaseNotes.description})}return function(view,params){ApiClient.getJSON(ApiClient.getUrl("System/ReleaseNotes/Versions")).then(function(versions){var selectVersion=view.querySelector("#selectVersion"),currentVersion=params.version||"";selectVersion.innerHTML=versions.map(function(v){return"<option"+(v.versionStr===currentVersion?" selected":"")+' value="'+v.versionStr+'">'+v.name+"</option>"}).join(""),selectVersion.dispatchEvent(new CustomEvent("change",{}))}),view.querySelector("#selectVersion").addEventListener("change",onVersionChange)}});