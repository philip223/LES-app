//
//  NonMenuController.swift
//  School app
//
//  Created by philip mackie on 1/22/15.
//  Copyright (c) 2015 vilet studios. All rights reserved.
//

import UIKit



class NonMenuController: UIViewController {
    
    weak var delegate: LeftMenuProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func handleAppStore(sender: AnyObject) {
        let alert = UIAlertController(title: "Rate this app", message:  "Give this app a thums up 👍👍", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "👍👍👍" , style: UIAlertActionStyle.Default)  { _ in
            // Open App in AppStore
            let iLink = "https://itunes.apple.com/us/app/yet-another-spaceshooter/id949662362?mt=8"
            UIApplication.sharedApplication().openURL(NSURL(string: iLink)!)
            } )
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.removeNavigationBarItem()
    }
  
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        coordinator.animateAlongsideTransition(nil, completion: { (context: UIViewControllerTransitionCoordinatorContext!) -> Void in
            guard let vc = (self.slideMenuController()?.mainViewController as? UINavigationController)?.topViewController else {
                return
            }
            if vc.isKindOfClass(NonMenuController)  {
                self.slideMenuController()?.removeLeftGestures()
                self.slideMenuController()?.removeRightGestures()
            }
        })
    }
  
    @IBAction func didTouchToMain(sender: UIButton) {
        delegate?.changeViewController(LeftMenu.Main)
    }
}
