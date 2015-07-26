###Xamarin + React Native sample project
##Getting started
These instructions assume you already have a react native project setup and your javascript bundle is available on `http://localhost:8081/index.ios.bundle`
<br/>
This will only work on a simulator, to run from a device you will need to update the url inside     `SampleApp/AppDelegate.cs`

To build the application you will first need to download React Native & build the static library for Xamarin to use.

After checking out the project run the following commands:

```

cd /ReactNative
npm install

chmod +x ./buildLibs.sh
./buildLibs.sh

```

After you have done this, you can load the project in xamarin studio and deploy to a device or simulator.

##TODO
The sample application only works on a simulator. Physical devices run into this error:

```

[error][tid:com.facebook.React.JavaScript] 'Error: undefined is not an object (evaluating \'t("NativeModules").UIManager.RCTDatePicker.Constants\')\n

```
