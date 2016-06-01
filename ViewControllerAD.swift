//
//  ViewControllerAD.swift
//  SlideMenuControllerSwift
//
//  Created by philip mackie on 04/03/16.
//  Copyright © 2016 Yuji Hato. All rights reserved.
//

import UIKit

class ViewControllerAD: UIViewController {

    @IBOutlet var textfield: UITextField!
    
    @IBOutlet var label: UILabel!
    
    @IBAction func button(sender: AnyObject) {
    
    label.text = textfield.text
    }
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




    


