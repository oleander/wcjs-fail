var BrowserWindow = require("browser-window");
var app = require("app");

app.on("ready", function() {
  var mainWindow = new BrowserWindow({
    width: 500,
    height: 500
  });

  mainWindow.module = undefined;
  mainWindow.loadUrl("file://" + __dirname + "/index.html");
  mainWindow.maximize();
  mainWindow.openDevTools();
});