//
//  ViewController.swift
//  Bau Cua
//
//  Created by Ba Phuc Nguyen on 2019-07-12.
//  Copyright © 2019 Phuc Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    
    let diceArray = ["Bau", "Cua", "Tom", "Ca", "Huou", "Ga"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDicesImage()
    }

    @IBAction func rungButtonPressed(_ sender: UIButton) {
            updateDicesImage()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDicesImage()
    }
    
    func updateDicesImage(){
        diceImageView1.image = UIImage(named: diceArray[Int.random(in: 0...5)])
        diceImageView2.image = UIImage(named: diceArray[Int.random(in: 0...5)])
        diceImageView3.image = UIImage(named: diceArray[Int.random(in: 0...5)])
    }
}

