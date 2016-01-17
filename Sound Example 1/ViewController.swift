//
//  ViewController.swift
//  Sound Example 1
//
//  Created by Nivardo Ibarra on 1/11/16.
//  Copyright © 2016 Nivardo Ibarra. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    private var mySound: SystemSoundID = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let soundURL = NSBundle.mainBundle().URLForResource("Submarine", withExtension: "aiff")
        AudioServicesCreateSystemSoundID(soundURL! as CFURL, &mySound)
    }


    @IBAction func play() {
        AudioServicesPlaySystemSound(mySound)
    }

}

