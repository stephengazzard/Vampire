//
//  Vampire.swift
//  Vampire
//
//  Created by Stephen Gazzard on 2015-06-11.
//  Copyright © 2015 Broken Kings. All rights reserved.
//

import Foundation

class Vampire: NSObject, NSCoding {
    var hunger : Float = 0

    // MARK: NSCoding
    private static let hungerKey = "hungerKey"
    required init?(coder aDecoder: NSCoder) {
        hunger = aDecoder.decodeFloatForKey(Vampire.hungerKey)
    }

    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeFloat(hunger, forKey: Vampire.hungerKey)
    }
}
