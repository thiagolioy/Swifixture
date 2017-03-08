//
//  Swifixture.swift
//  Swifixture
//
//  Created by Thiago Lioy on 08/03/17.
//  Copyright © 2017 tplioy. All rights reserved.
//

import Foundation
public struct Swifixture {
    
    let data: Data
    let json: String
    
    public init?(file: String, withExtension fileExt: String = "json", in bundle:Bundle = Bundle.main) {
        guard let path = bundle.path(forResource: file, ofType: fileExt) else {
            return nil
        }
        let pathURL = URL(fileURLWithPath: path)
        do {
            data = try Data(contentsOf: pathURL, options: .dataReadingMapped)
            if let decoded = NSString(data: data, encoding: 0) as? String {
                json = decoded
            } else {
                return nil
            }
        } catch{
            return nil
        }
    }
}
