//
//  RightViewController.swift
//  School app
//
//  Created by philip mackie  on 12/3/14.
//

import UIKit

class RightViewController : UIViewController {
    
    @IBOutlet var scroll: UIScrollView!
    
    @IBOutlet var scroll2: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    scroll.contentSize.width = 860
    scroll2.contentSize.width = 860
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
