//
//  Maestro.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Maestro, rhs: Maestro) -> Bool {
    return lhs.idMaestro == rhs.idMaestro
}

class Maestro: Object {
    
    dynamic var idMaestro: String = ""
    dynamic var persona: Persona!
    
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idMaestro = json["idMaestro"].stringValue
        persona = Persona(json)
    }
    
}
