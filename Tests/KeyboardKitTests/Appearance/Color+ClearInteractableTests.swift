//
//  View+ClearInteractableTests.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2020-06-22.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Quick
import Nimble
import KeyboardKit
import SwiftUI

class Color_ClearInteractableTests: QuickSpec {

    override func spec() {
        
        describe("clear interactable background") {
            
            it("is defined") {
                let view = Color.clearInteractable
                expect(view).to(equal(Color.white.opacity(0.001)))
            }
        }
    }
}
