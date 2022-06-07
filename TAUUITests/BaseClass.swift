import Foundation
import XCTest
class HomeScreen {
    let appTest: XCUIApplication
    let cityField: XCUIElement
    let enrollButton: XCUIElement
    let confirmText: XCUIElement
    
    init(app: XCUIApplication) {
        self.appTest = app
        cityField = appTest.textFields["city"]
        enrollButton = appTest.buttons["enrollButton"]
        confirmText = appTest.staticTexts["Thanks for Joining!"]
    }
    
    func setUp() {
        appTest.launch()
    }
    func tearDown() {
        appTest.terminate()
    }
    func checkAppReadiness() {
        XCTAssert(appTest.buttons["enrollButton"].exists,"Enrollment button not found")
    }
}
