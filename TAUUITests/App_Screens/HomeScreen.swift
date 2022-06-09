import Foundation
import XCTest
class HomeScreen {
    let appTest: XCUIApplication
    let cityField: XCUIElement
    let enrollButton: XCUIElement
    let confirmationText: XCUIElement
    
    init(app: XCUIApplication) {
        self.appTest = app
        cityField = appTest.textFields["city"]
        enrollButton = appTest.buttons["enrollButton"]
        confirmationText = appTest.staticTexts["Thanks for Joining!"]
    }
    
    func setUp() {
        appTest.launch()
    }
    func tearDown() {
        appTest.terminate()
    }

}
