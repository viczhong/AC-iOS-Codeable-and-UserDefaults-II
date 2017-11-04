//
//  Info.swift
//  Codeable and UserDefaults II
//
//  Created by Victor Zhong on 11/4/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

struct Info: Codable {
    let seed: String
    let results: Int
    let page: Int
    let version: String
}
