//
//  CatRequester.swift
//  Codeable and UserDefaults II
//
//  Created by Louis Tur on 7/5/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

class CatRequester {
	// Example URLs
	let example1URL = URL(string: "https://api.myjson.com/bins/1h4707")!
	let example2URL = URL(string: "https://api.myjson.com/bins/fq67r")!
	let example3URL = URL(string: "https://api.myjson.com/bins/oatbr")!
	let example4URL = URL(string: "https://api.myjson.com/bins/vg0l3")!

    func makeBasicCatRequest() {
        let urlSession = URLSession(configuration: .default)
        urlSession.dataTask(with: example4URL) { (data: Data?, _, _) in
            if data != nil {
                do {
                    let catArrayContainer = try JSONDecoder().decode(CatArrayContainer.self, from: data!)
                    for cat in catArrayContainer.cats {
                        print("\n\nNice to meet you, I'm ", cat.name)
                    }
                }
                catch {
                    print("Error converting Data into Cat!", error)
                }
            }
            }.resume()
    }
}
