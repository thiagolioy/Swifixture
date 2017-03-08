//
//  Swifixture+ObjectMapper.swift
//  Swifixture
//
//  Created by Thiago Lioy on 08/03/17.
//  Copyright © 2017 tplioy. All rights reserved.
//

import Foundation
import ObjectMapper

extension Swifixture {
    func map<T: Mappable>(to type: T.Type) -> T? {
        return Mapper<T>().map(JSONString: json)
    }
    func mapArray<T: Mappable>(to type: T.Type) -> [T] {
        return Mapper<T>().mapArray(JSONString: json) ?? []
    }
}
