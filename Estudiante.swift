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
    
    dynamic var idEstudiante: Int = 0
    dynamic var persona: Persona!
    dynamic var expediente: String!
    var unidades : List<Unit>!
    dynamic var grupo: Int = 0

    convenience required init(_ json: JSON) {
        self.init()
        self.idEstudiante = json["idEstudiante"].intValue
        self.expediente = json["expediente"].stringValue
        self.persona = Persona(json)
        self.grupo = json["grupo"].intValue
        
    }
    
    convenience required init(idEstudiante: Int, expediente: String, persona: Persona, grupo: Int!) {
        self.init()
        self.idEstudiante = idEstudiante
        self.expediente = expediente
        self.persona = Persona(idPersona: persona.idPersona, nombrePersona: persona.nombrePersona, apellido: persona.apellido)
        self.grupo = grupo
    }
    
    convenience required init(_ idEstudiante: Int) {
        self.init()
        self.idEstudiante = 0
        self.expediente = ""
        self.persona = Persona()
        self.grupo = 0
    }
    
}
