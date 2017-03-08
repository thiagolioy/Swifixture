//
//  SwifixtureSpec.swift
//  Swifixture
//
//  Created by Thiago Lioy on 04/10/16.
//  Copyright © 2016 tplioy. All rights reserved.
//

import Quick
import Nimble
@testable import Swifixture

class SwifixtureSpec: QuickSpec {

    override func spec() {

        describe("SwifixtureSpec") {
            context("existing json") {
                context("{} json") {
                    var swifixture: Swifixture?
                    beforeEach {
                        let bundle = Bundle(for: type(of: self))
                        swifixture = Swifixture(file: "example", in: bundle)
                    }
                    
                    it("should be able to create Swifixture instance") {
                        expect(swifixture).toNot(beNil())
                    }
                    it("should have valid json") {
                        expect(swifixture!.json).toNot(beEmpty())
                    }
                }
                
                context("[] json") {
                    var swifixture: Swifixture?
                    beforeEach {
                        let bundle = Bundle(for: type(of: self))
                        swifixture = Swifixture(file: "arrayExample", in: bundle)
                    }
                    
                    it("should be able to create Swifixture instance") {
                        expect(swifixture).toNot(beNil())
                    }
                    it("should have valid json") {
                        expect(swifixture!.json).toNot(beEmpty())
                    }
                }
            }
            
            
            
            context("no file in path") {
                it("should be able to create Swifixture instance") {
                    let swifixture = Swifixture(file: "notInPath")
                    expect(swifixture).to(beNil())
                }
            }
        }

    }

}
