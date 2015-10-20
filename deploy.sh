#!/bin/sh -e

APP=WCJSFail
VERSION="0.33.3"
export npm_config_wcjs_runtime="electron"
export npm_config_wcjs_runtime_version=$VERSION

echo "Remove old app"
rm -rf dist

echo "Install deps"
npm install

echo "Copy libs"
cp -R lib node_modules/wcjs-player/node_modules/wcjs-renderer/node_modules/webchimera.js/build/Release

echo "Build package using electron-packager"
./node_modules/electron-packager/cli.js . $APP --out=dist/ --version=$VERSION --platform=darwin --arch=x64 --prune

echo "$APP has been created"