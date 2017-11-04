//
//  Result.swift
//  Codeable and UserDefaults II
//
//  Created by Victor Zhong on 11/4/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

struct Result: Codable {
    let results: [User]
    let info: Info
}
