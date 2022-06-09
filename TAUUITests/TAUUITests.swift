
import XCTest

class TAUUITests: XCTestCase {
    
    // why does  the below throw an error ?
    //let app = XCUIApplication()
    let homeScreen = HomeScreen(app: XCUIApplication())
    let helper = HelperFunctions()
    
    func test_VerifyJoiningLabel() throws {
        homeScreen.setUp()
        homeScreen.cityField.tap()
        homeScreen.cityField.typeText("Malerkotla Majnu")
        XCTAssert(homeScreen.enrollButton.exists,"Enrollment button not found")
        homeScreen.enrollButton.tap()
        let joiningResult = helper.elementExistence(element: homeScreen.confirmationText)
        XCTAssert(joiningResult,"Successful joining message not found within timeout period")
        homeScreen.tearDown()
       }
}
