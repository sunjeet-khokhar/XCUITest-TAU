import Foundation
import XCTest
class BaseTestClass: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        app.launch()
    }
    override func tearDown() {
        super.tearDown()
        app.terminate()
    }
    
}
