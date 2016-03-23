//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Ryan Alexander Mansker on 3/21/16.
//  Copyright © 2016 Ryan Alexander Mansker. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot: [String] {
        return ["Magic wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
}