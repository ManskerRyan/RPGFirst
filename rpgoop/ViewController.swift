//
//  ViewController.swift
//  rpgoop
//
//  Created by Ryan Alexander Mansker on 3/21/16.
//  Copyright © 2016 Ryan Alexander Mansker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHp: UILabel!
    
    @IBOutlet weak var enemyHp: UILabel!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var lootBox: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onClickLoot(sender: UIButton) {
    }
    
}

