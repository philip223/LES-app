//
//  ExSlideMenuController.swift
//  School app
//
//  Created by philip mackie on 11/11/15.
//  Copyright © 2015 vilet studios. All rights reserved.
//

import UIKit

class ExSlideMenuController : SlideMenuController {

    override func isTagetViewController() -> Bool {
        if let vc = UIApplication.topViewController() {
            if vc is MainViewController ||
            vc is SwiftViewController ||
            vc is JavaViewController ||
            vc is GoViewController {
                return true
            }
        }
        return false
    }
}
