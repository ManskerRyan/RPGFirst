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
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Player12", hp: 110, attPwr: 20)
        playerHp.text = "\(player.hp) HP"
        
        generateRandomEnemy()
    }
    
    //MARK: Functions
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPwr: 12)
        } else {
            enemy = DevilWizard(startingHp: 60, attackPwr: 15)
        }
        printLbl.text = "Ran into a \(enemy.type)"
        enemyHp.text = "\(enemy.hp) HP"
        enemyImg.hidden = false
        enemyHp.hidden = false
    }
    
    @IBAction func onClickLoot(sender: UIButton) {
        lootBox.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.generateRandomEnemy), userInfo: nil, repeats: false)
    }
    
    @IBAction func onAttackTapped(sender: AnyObject) {
        if enemy.attemptAttack(player.attackPwr) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr)"
            enemyHp.text = "\(enemy.hp) HP"
        } else {
            printLbl.text = "Attack was unsuccessful!"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = "\(player.name) found  \(loot)"
            lootBox.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHp.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImg.hidden = true
        }
    } 
}

















