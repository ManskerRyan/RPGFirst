//
//  Enemy.swift
//  rpgoop
//
//  Created by Ryan Alexander Mansker on 3/21/16.
//  Copyright © 2016 Ryan Alexander Mansker. All rights reserved.
//

import Foundation

class Enemy: Character {
    var loot: [String] {
        return ["Rustry Dagger", "Cracked Buckler"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoot () -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
}