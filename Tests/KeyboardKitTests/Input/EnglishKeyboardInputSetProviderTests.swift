//
//  EnglishKeyboardInputSetProviderTests.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2020-07-03.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Quick
import Nimble
import UIKit
@testable import KeyboardKit

class EnglishKeyboardInputSetProviderTests: QuickSpec {
    
    override func spec() {
        
        var device: MockDevice!
        var provider: EnglishKeyboardInputSetProvider!
        
        beforeEach {
            device = MockDevice()
            provider = EnglishKeyboardInputSetProvider(device: device)
        }
        
        describe("locale key") {
            
            it("is correct") {
                expect(provider.localeKey).to(equal(LocaleKey.english.key))
            }
        }
        
        describe("input set") {
            
            context("for phones") {
                
                beforeEach {
                    device.userInterfaceIdiomValue = .phone
                }
                
                it("has correct alphabetic input set") {
                    expect(provider.alphabeticInputSet().rows.characters()).to(equal([
                        "qwertyuiop".chars,
                        "asdfghjkl".chars,
                        "zxcvbnm".chars
                    ]))
                }
                
                it("has correct numeric input set") {
                    expect(provider.numericInputSet().rows.characters()).to(equal([
                        "1234567890".chars,
                        "-/:;()$&@“".chars,
                        ".,?!’".chars
                    ]))
                }
                
                it("has correct symbolic input set") {
                    expect(provider.symbolicInputSet().rows.characters()).to(equal([
                        "[]{}#%^*+=".chars,
                        "_\\|~<>€£¥•".chars,
                        ".,?!’".chars
                    ]))
                }
            }
            
            context("for pads") {
                
                beforeEach {
                    device.userInterfaceIdiomValue = .pad
                }
                
                it("has correct alphabetic input set") {
                    expect(provider.alphabeticInputSet().rows.characters()).to(equal([
                        "qwertyuiop".chars,
                        "asdfghjkl".chars,
                        "zxcvbnm,.".chars
                    ]))
                }
                
                it("has correct numeric input set") {
                    expect(provider.numericInputSet().rows.characters()).to(equal([
                        "1234567890".chars,
                        "@#$&*()’”".chars,
                        "%-+=/;:,.".chars
                    ]))
                }
                
                it("has correct symbolic input set") {
                    expect(provider.symbolicInputSet().rows.characters()).to(equal([
                        "1234567890".chars,
                        "€£¥_^[]{}".chars,
                        "§|~…\\<>!?".chars
                    ]))
                }
            }
        }
    }
}
