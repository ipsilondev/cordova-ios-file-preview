// requirements
var cordova = require('cordova');

// api object
var iOSFilePreview = {
  open: function (file, type, success, fail) {
    cordova.exec(success /* has opened */, fail, 'iOSFilePreview', 'open', [file, type]);
  }
};
// exporting only the open function; be directly used
module.exports = iOSFilePreview.open;
