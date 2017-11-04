//
//  ResultsManager.swift
//  Codeable and UserDefaults II
//
//  Created by Victor Zhong on 11/4/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

class ResultsManager {
    static let manager = ResultsManager()
    private init() {}

    private let urlSession = URLSession(configuration: .default)

    func makeUsersRequest() {
        let url = URL(string: "https://randomuser.me/api/?nat=us&inc=gender,name,email,registered,picture")!
        urlSession.dataTask(with: url) { (data: Data?, _, _) in
            do {
                if let data = data {
                    let results = try JSONDecoder().decode(Result.self, from: data)
                    dump(results)
                }
            }
            catch {
                print(error)
            }
        }.resume()
    }
}
