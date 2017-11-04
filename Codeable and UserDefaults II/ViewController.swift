//
//  ViewController.swift
//  Codeable and UserDefaults II
//
//  Created by Louis Tur on 7/5/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let manager = ResultsManager.manager
    //    let requester = CatRequester()
    //    let podRequestor = PodRequestor()

    override func viewDidLoad() {
        super.viewDidLoad()

        manager.makeUsersRequest()
	}


}

