//
//  File.swift
//  TAUUITests
//
//  Created by sunjeet khokhar on 9/06/22.
//  Copyright © 2022 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class HelperFunctions {
    
func elementExistence(element: XCUIElement) -> Bool {
    let confirmElement = element.waitForExistence(timeout: 5)
    return confirmElement
}
    
}
