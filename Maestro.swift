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
    
    dynamic var idMaestro: Int = 0
    dynamic var persona: Persona!
    
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idMaestro = json["idMaestro"].intValue
        persona = Persona(json)
    }
    
    convenience required init(idMaestro: Int, persona: Persona) {
        self.init()
        self.idMaestro = idMaestro
        self.persona = Persona(idPersona: persona.idPersona, nombrePersona: persona.nombrePersona, apellido: persona.apellido)
    }
    
    convenience required init(_ idMaestro: Int) {
        self.init()
        self.idMaestro = 0
        self.persona = Persona()
    }

    
}
