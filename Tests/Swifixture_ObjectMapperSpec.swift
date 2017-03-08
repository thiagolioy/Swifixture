//
//  Swifixture+ObjectMapperSpec.swift
//  Swifixture
//
//  Created by Thiago Lioy on 08/03/17.
//  Copyright © 2017 tplioy. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import Swifixture
import ObjectMapper

struct UserTestModel {
    var userName: String = ""
    var token: String = ""
}

extension UserTestModel: Mappable {
    init?(map: Map) {
        
    }
    mutating func mapping(map: Map) {
        userName <- map["username"]
        token <- map["token"]
    }
}

class Swifixture_ObjectMapperSpec: QuickSpec {
    
    override func spec() {
        
        describe("Swifixture+ObjectMapperSpec") {
            context("{} json"){
                var swifixture: Swifixture?
                beforeEach {
                    let bundle = Bundle(for: type(of: self))
                    swifixture = Swifixture(file: "example", in: bundle)
                }
                
                it("should be able to parse to object using a mappable instance") {
                    let parsedObj = swifixture!.map(to: UserTestModel.self)
                    expect(parsedObj).toNot(beNil())
                }
            }
            context("[] json"){
                var swifixture: Swifixture?
                beforeEach {
                    let bundle = Bundle(for: type(of: self))
                    swifixture = Swifixture(file: "arrayExample", in: bundle)
                }
                
                it("should be able to parse to [object] using a mappable instance") {
                    let parsedObj = swifixture!.mapArray(to: UserTestModel.self)
                    expect(parsedObj).toNot(beNil())
                    expect(parsedObj.count).to(equal(2))
                }
            }
        }
    }
    
}
