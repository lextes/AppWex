//
//  Estudiante.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Estudiante, rhs: Estudiante) -> Bool {
    return lhs.idEstudiante == rhs.idEstudiante
}

class Estudiante: Object {
    
    dynamic var idEstudiante: String = ""
    dynamic var persona: Persona!
    dynamic var expediente: String!
    dynamic var unidades: Array<Unit>!

    convenience required init(_ json: JSON) {
        self.init()
        self.idEstudiante = json["idEstudiante"].stringValue
        self.expediente = json["expediente"].stringValue
        persona = Persona(json)
    }
    
}
