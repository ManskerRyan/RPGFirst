//
//  Character.swift
//  rpgoop
//
//  Created by Ryan Alexander Mansker on 3/21/16.
//  Copyright © 2016 Ryan Alexander Mansker. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attPwr: Int = 10
    
    var attPwr: Int {
        get {
            return _attPwr
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(startingHp: Int, attPwr: Int) {
        self._hp = startingHp
        self._attPwr = attPwr
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._attPwr -= attackPwr
        return true
    }
}
















