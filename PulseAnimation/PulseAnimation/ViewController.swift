//
//  ViewController.swift
//  PulseAnimation
//
//  Created by 김진선 on 2017. 12. 13..
//  Copyright © 2017년 JinseonKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var starImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        starImageView.isUserInteractionEnabled = true
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.addPulse))
        tapGestureRecognizer.numberOfTapsRequired = 1
        starImageView.addGestureRecognizer(tapGestureRecognizer)
        
    }
    
    @objc func addPulse() {
        let pulse = Pulsing(numberOfPulses: 1, radius: 150, position: starImageView.center)
        pulse.animationDuration = 1.5
        pulse.backgroundColor = UIColor.red.cgColor
        self.view.layer.insertSublayer(pulse, below: starImageView.layer)
    }
    
}

