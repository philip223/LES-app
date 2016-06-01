//
//  ImageHeaderCell.swift
//  School app
//
//  Created by philip mackie on 11/3/15.
//  Copyright © 2015 vilet studios. All rights reserved.
//

import UIKit

class ImageHeaderView : UIView {
    
    @IBOutlet weak var profileImage : UIImageView!
    @IBOutlet weak var backgroundImage : UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor(hex: "E0E0E0")
       
       
    }
}