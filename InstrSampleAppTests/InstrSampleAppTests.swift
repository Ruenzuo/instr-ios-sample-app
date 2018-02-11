//
//  InstrSampleAppTests.swift
//  InstrSampleAppTests
//
//  Created by Crisostomo Medina, Renzo on 11.02.18.
//  Copyright © 2018 Crisostomo Medina, Renzo. All rights reserved.
//

import XCTest
import EarlGrey

class EarlGreyTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testDetailView() {
        EarlGrey.select(elementWithMatcher: grey_keyWindow()).assert(grey_sufficientlyVisible())
        EarlGrey.select(elementWithMatcher: grey_text("Berlin")).perform(grey_tap())
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("CITY_ID")).assert(grey_text("Berlin"))
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("LOCATION_ID")).assert(grey_text("52°30′26″N 13°8′45″E"))
    }

}
