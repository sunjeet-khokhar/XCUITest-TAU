To run tests from command line locally or in CI engine

Option 1-->
Use Fastlane 
> brew update
> brew install fastlane
> fastlane scan --scheme TAU --project "TAU.xcodeproj" --devices ["iPhone 13 Pro Max","iPad Air (4th generation)"]

Option 2 -->
 if you want to use XCOde command line tools 

> xcodebuild -project Tau.xcodeproj -scheme TAU -destination 'platform=iOS Simulator,name=iPhone 13' clean build test
