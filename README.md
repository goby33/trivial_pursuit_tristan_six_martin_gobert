# trivial_pursuit_six_tristan_gobert_martin

trivial pursuit

## Getting Started


flutter pub pub run flutter_launcher_icons:main

flutter pub run build_runner build --delete-conflicting-outputs

flutter clean

delete ios/podfile
delete ios/Pods

flutter pub get
cd ios 
pod install
cd ../ 
flutter run


pod 'FirebaseFirestore', :git => 'https://github.com/invertase/firestore-ios-sdk-frameworks.git', :tag => '10.3.0'