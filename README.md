# HAHConnect
=======================


## Description
`HAHConnect` is a highly telehealth library made by Health at Hand.

See a doctor now via live video consultation on your mobile phone. No appointments needed, skip clinic waiting rooms and get immediate access to highly qualified doctors, wherever you are.

Licensed by the Dubai Health Authority, Health at Hand is the UAE’s most advanced online video consultation app.

WHAT TO EXPECT FROM VIDEO CONSULTATION
Just like a normal face to face consultation in a clinic, your Health at Hand doctor will talk to you about your symptoms and history, make an assessment and provide a treatment plan.



HIGH QUALITY HEALTHCARE
Trustworthy, experienced and reliable, doctors on the Health at Hand app offer the highest quality of medical expertise. We work with top tier licensed clinics, selecting the best doctors with the highest international accreditations.

ACCESSIBLE & CONVENIENT
Great for anyone who is too busy or unable to travel to a doctor’s clinic, you can use Health at Hand for yourself or your children. Always online, the doctors are ready to help you feel better.

CONFIDENTIAL & SECURE
Your calls are always confidential and your private health data is in safe hands. We are fully HIPAA compliant, the most respected global standard for protecting sensitive patient data. We will never share any of your information.

WHEN TO USE HEALTH AT HAND 
Perfect for all common non-emergency medical issues, doctors on the Health at Hand app provide immediate advice on a wide range of issues. Some examples include:

Colds
Coughs
Flu-like symptoms
Sore throats
Earaches
Sinus congestion and allergies
Headaches
Urinary problems
Indigestion
Vomiting
Diarrhoea
Eye infections
Rashes



### Features
* Video call with HAH doctors
* See doctor’s report
* Download PDF version of doctor’s report
* Upload documents and images for diagnosis
* Upload your health insurance card, emirates ID and passport

## Requirements
* iOS 10.0+
* ARC
* Swift 4.2

## Installation
### CocoaPods
#### iOS 10 and newer
HAHConnect is available on CocoaPods. Simply add the following line to your podfile:

```
# For latest release in cocoapods

platform :ios, '10.0'

pod 'HAHConnect-iOS', '0.0.4'
```

## Getting Started
#### Initialization and presentation
```
Swift

import HAHConnect

let phoneNumber: [AnyHashable: Any] = [
AnyHashable("code"): "+971",
AnyHashable("number"): "123456789"]

let user: [String: Any] = [
"first_name": "",
"last_name": "",
"email": "",
"gender": "",
"date_of_birth": "",
"external_user_id": "",
"contract_id": "",
"session_id": "",
"nextcare_beneficiary_id": "",
"mcontract_id": "",
"country": "United Arab Emirates",
"government_id_number": "12312312313",
"phone_number": phoneNumber]

//Push Notification Deeplinking User Info will be passed if needed, in userInfo, else pass nil
//let userInfo: [AnyHashable: Any] = ....

//sandbox for development build
//production for release build
let configuration : Configuration = Configuration(environment: .production)

let connect : HAHConnect = HAHConnect(configuration: configuration,
                                              user: user,
                                              userInfo: nil,
                                              delegate: self)
connect.startSDKHome(controller: self)


extension ViewController : HAHConnectDelegate {
    func HAHConnectInitialised() {
        //print("HAHConnectInitialised is called")
    }
    
    func HAHConnectDismissed() {
        //print("HAHConnectDismissed is called")
    }
}


Add following keys to Info.plist

<key>NSCameraUsageDescription</key>
<string>We would like to use your camera to support the doctor’s assessment and diagnosis</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>We would like to access your photos to support the doctor’s assessment and diagnosis
</string>
<key>NSMicrophoneUsageDescription</key>
<string>For you to speak to the doctor we need to access your microphone</string>

```

## NOTE:

1. The user is integrated inside SDK to test the SDK, which will later be replaced with user of your system.
2. Please run on real physical device. Simulator support will be given soon.
3. Target -> Build Settings -> BitCode --- Set to NO.
4. The SDK is shared using Cocoapods as dependency manager - Please follow if you are not fimilar with it.
Link: https://guides.cocoapods.org/using/getting-started.html


## License
This library uses the Apache License, version 2.0. Please see the library's individual files for more information.

