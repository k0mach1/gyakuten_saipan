//
//  ViewController.swift
//  gyakuten-saipan
//
//  Created by 町田公佑 on 2017/10/27.
//  Copyright © 2017年 k0mach1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gyakutenImageVIew: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.gyakutenImageVIew.alpha = 0
        submitButton.layer.cornerRadius = submitButton.frame.height / 2
    }

    @IBAction func onsubmitButtonClick(_ sender: Any) {
        UIView.animate(withDuration: 2.0, animations: {
            self.imageView.transform =  CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        }, completion: { finished in
            UIView.animate(withDuration: 1.0) {
                self.gyakutenImageVIew.alpha = 1.0
            }
        })
    }
}

