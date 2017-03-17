//
//  Grupo.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Grupo, rhs: Grupo) -> Bool {
    return lhs.idGrupo == rhs.idGrupo
}

class Grupo: Object{
    
    dynamic var idGrupo: String = ""
    dynamic var nombreGrupo: String = ""
    dynamic var estudiantes: Array<Estudiante>!
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idGrupo = json["idGrupo"].stringValue
        self.nombreGrupo = json["nombreGrupo"].stringValue
        let estudiantesGrupo = json ["estudiantes"]
        
        for (_, subJson) : (String, JSON) in estudiantesGrupo{
            let currentEstudiante = Estudiante(subJson)
            self.estudiantes.append(currentEstudiante)
        }

    }
    
}

