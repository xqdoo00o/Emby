define(["exports"],function(_exports){Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0;var SpeedSampler=function(){function SpeedSampler(){babelHelpers.classCallCheck(this,SpeedSampler),this._firstCheckpoint=0,this._lastCheckpoint=0,this._intervalBytes=0,this._totalBytes=0,this._lastSecondBytes=0,self.performance&&self.performance.now?this._now=self.performance.now.bind(self.performance):this._now=Date.now}return babelHelpers.createClass(SpeedSampler,[{key:"reset",value:function(){this._firstCheckpoint=this._lastCheckpoint=0,this._totalBytes=this._intervalBytes=0,this._lastSecondBytes=0}},{key:"addBytes",value:function(bytes){0===this._firstCheckpoint?(this._firstCheckpoint=this._now(),this._lastCheckpoint=this._firstCheckpoint,this._intervalBytes+=bytes,this._totalBytes+=bytes):this._now()-this._lastCheckpoint<1e3?(this._intervalBytes+=bytes,this._totalBytes+=bytes):(this._lastSecondBytes=this._intervalBytes,this._intervalBytes=bytes,this._totalBytes+=bytes,this._lastCheckpoint=this._now())}},{key:"currentKBps",get:function(){this.addBytes(0);var durationSeconds=(this._now()-this._lastCheckpoint)/1e3;return 0===durationSeconds&&(durationSeconds=1),this._intervalBytes/durationSeconds/1024}},{key:"lastSecondKBps",get:function(){return this.addBytes(0),0!==this._lastSecondBytes?this._lastSecondBytes/1024:500<=this._now()-this._lastCheckpoint?this.currentKBps:0}},{key:"averageKBps",get:function(){var durationSeconds=(this._now()-this._firstCheckpoint)/1e3;return this._totalBytes/durationSeconds/1024}}]),SpeedSampler}();_exports.default=SpeedSampler});