#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)

function buildLib {
  PROJECT=$DIR/node_modules/react-native/$1
  echo $PROJECT
  rm -Rf $PROJECT/**/*.a
  cd $PROJECT
  xcodebuild -target $2 -sdk iphonesimulator -configuration Release clean build
  xcodebuild -target $2 -sdk iphoneos -arch armv7 -configuration Release clean build
  cd $DIR
  lipo -create -output $DIR/bin/react/lib$2.a \
    $PROJECT/build/Release-iphoneos/lib$2.a \
    $PROJECT/build/Release-iphonesimulator/lib$2.a
}

#clean .a directory
rm -Rf $DIR/bin/react/**/*.a
mkdir $DIR/bin/react/

buildLib React React
buildLib Libraries/Image RCTImage
buildLib Libraries/Text RCTText

cd $DIR
rm -f $DIR/libReactNative.a
libtool -static -o libReactNative.a \
  $DIR/bin/react/libReact.a \
  $DIR/bin/react/libRCTImage.a \
  $DIR/bin/react/libRCTText.a
