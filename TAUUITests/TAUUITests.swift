
import XCTest
class TAUUITests: XCTestCase {
    
    func test_VerifyJoiningLabel() throws {
           let app = XCUIApplication()
           let homeScreen = HomeScreen(app: app)
           homeScreen.setUp()
           homeScreen.cityField.tap()
           homeScreen.cityField.typeText("Malerkotla Majnu")
           homeScreen.tearDown()
           
           //   setUp()
           //   app.textFields["city"].tap()
           //   app.textFields["city"].typeText("Malerkotla")
           //   checkAppReadiness()
           //   app.buttons["enrollButton"].tap()
           //   XCTAssert(app.staticTexts["Thanks for Joining!"].exists)
           //   tearDown()
       }
}
