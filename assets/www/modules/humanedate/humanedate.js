define(["exports","./../common/datetime.js","./../common/globalize.js"],function(_exports,_datetime,_globalize){Object.defineProperty(_exports,"__esModule",{value:!0}),_exports.default=void 0,_datetime=babelHelpers.interopRequireDefault(_datetime),_globalize=babelHelpers.interopRequireDefault(_globalize);var fn,units=[["year",31536e6],["month",2592e6],["week",6048e5],["day",864e5],["hour",36e5],["minute",6e4],["second",1e3]];fn=window.Intl&&window.Intl.RelativeTimeFormat?function(date_str,isPastEvent){for(var unit,elapsedMs=_datetime.default.parseISO8601Date(date_str).getTime()-Date.now(),elapsedMsAbs=Math.abs(elapsedMs),i=0,length=units.length;i<length&&!(elapsedMsAbs>=(unit=units[i])[1]);i++);var elapsedInUnit=Math.round(elapsedMs/unit[1]);return!1!==isPastEvent&&-1<(elapsedInUnit=Math.min(elapsedInUnit,1))&&(elapsedInUnit=-1,unit=units[units.length-1]),new Intl.RelativeTimeFormat(_globalize.default.getCurrentLocales()).format(elapsedInUnit,unit[0])}:function(date_str){var format,time_formats=[[90,"a minute"],[3600,"minutes",60],[5400,"an hour"],[86400,"hours",3600],[129600,"a day"],[604800,"days",86400],[907200,"a week"],[2628e3,"weeks",604800],[3942e3,"a month"],[31536e3,"months",2628e3],[47304e3,"a year"],[31536e5,"years",31536e3]],seconds=(new Date-_datetime.default.parseISO8601Date(date_str,!0))/1e3,i=0;for(seconds<0&&(seconds=Math.abs(seconds));null!=(format=time_formats[i++]);)if(seconds<format[0])return 2===format.length?format[1]+" ago":Math.round(seconds/format[2])+" "+format[1]+" ago";return 47304e5<seconds?Math.round(seconds/47304e5)+" centuries ago":date_str},_exports.default=fn});