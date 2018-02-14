//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Shashank Sharma on 11/3/17.
//  Copyright © 2017 Shashank Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var color = "white"
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func buttonTapped(_ sender: Any) {

        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotationAnimation.duration = 1
        rotationAnimation.fromValue = 0
        rotationAnimation.toValue = Double.pi * 2.0
        imageView.layer.add(rotationAnimation, forKey: "rotate")
        
        if (color == "white"){
            view.backgroundColor = UIColor.green
            color = "green"
        } else {
            view.backgroundColor = UIColor.white
            color = "white"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

