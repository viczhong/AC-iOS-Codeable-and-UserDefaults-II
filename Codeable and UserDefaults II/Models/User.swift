//
//  User.swift
//  Codeable and UserDefaults II
//
//  Created by Victor Zhong on 11/4/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

struct User: Codable {
    let gender: String
    let name: Name
    let email: String
    let registered: String
    let picture: Picture
}
