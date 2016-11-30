## INFO

web: Appbuilder-devel
user: test1234@icinetic.com
ticket: 7d8fc0b9-bdd3-4461-b204-d8ba8298bf6b

Master is a final app, Dev is a initial app.

## Swift App
iOS app generated by IBM Mobile UI Builder

[![](https://img.shields.io/badge/bluemix-powered-blue.svg)](https://bluemix.net)
[![](https://img.shields.io/badge/platform-ios-lightgrey.svg)](https://developer.apple.com/swift/)

### Table of Contents
* [Summary](#summary)
* [Requirements](#requirements)
* [Configuration](#configuration)

### Summary
This app has been automatically generated using IBM Mobile UI Builder.

### Requirements
* iOS 8.0+
* Xcode 7.3
* Swift 2.2

### Configuration


This app uses the Bluemix Mobile services SDKs in order to use the functionality of Mobile Analytics and Push Notifications.

It also uses Cloudant Sync to store, index and query local JSON data on a device and to synchronise data between many devices.

Optionally, you may have selected "Deploy to MFP" setting in Bluemix UI Builder, in which case IBM MobileFirstPlatform Foundation iOS SDK will be used for analytics.

All app dependencies are managed and configured by [CocoaPods](https://cocoapods.org/).

You can install CocoaPods using the following command:

```bash
$ sudo gem install cocoapods
```

If the CocoaPods repository is not configured, run the following command:

```bash
$ pod setup
```

For this app, a pre-configured `Podfile` has been included in the project folder. To download and install the required dependencies, run the following command in the project directory:

```bash
$ pod install
```
Now Open the Xcode workspace: `{APP_Name}.xcworkspace`. From now on, open the `.xcworkspace` file because it contains all the dependencies and configurations.

If you run into any issues during the pod install, it is recommended to run a pod update by using the following commands:

```bash
$ pod update
$ pod install
```
#### Third-party libraries

Your application has been created using Open Source software. Please double-check the source code of the application to determine if it complies with your licensing needs.

For more information about third-party libraries licenses used by IBM Mobile UI Builder, review the following:

* [Alamofire]( https://github.com/Alamofire/Alamofire)

* [SVProgressHUD](https://github.com/TransitApp/SVProgressHUD)

* [SDWebImage](https://github.com/rs/SDWebImage)

* [SlideMenuControllerSwift](https://github.com/dekatotoro/SlideMenuControllerSwift)

