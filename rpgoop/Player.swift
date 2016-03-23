//
//  Player.swift
//  rpgoop
//
//  Created by Ryan Alexander Mansker on 3/21/16.
//  Copyright © 2016 Ryan Alexander Mansker. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name = "Player"
    private var _inventory = [String]()
    
    var name: String {
        get {
            return _name
        }
    }
    
    var inventory: [String] {
        get {
            return _inventory
        }
    }
    
    convenience init(name: String, hp: Int, attPwr: Int) {
        self.init(startingHp: hp, attPwr: attPwr)
        _name = name
    }
}












