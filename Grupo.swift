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
    
    dynamic var idGrupo: Int = 0
    dynamic var nombreGrupo: String = ""
    var estudiantes: List<Estudiante>!
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idGrupo = json["idGrupo"].intValue
        self.nombreGrupo = json["nombreGrupo"].stringValue
        let estudiantesGrupo = json ["estudiantes"]
        
        for (_, subJson) : (String, JSON) in estudiantesGrupo{
            let currentEstudiante = Estudiante(subJson)
            self.estudiantes.append(currentEstudiante)
        }

    }
    
    convenience required init(idGrupo: Int, nombreGrupo: String, estudiantes: List<Estudiante>?) {
        self.init()
        self.idGrupo = idGrupo
        self.nombreGrupo = nombreGrupo
        
        for i in 0 ... (estudiantes?.count)! - 1{
            self.estudiantes.append((estudiantes?[i])!)
        }
    }
    
    convenience required init(_ idGrupo: Int) {
        self.init()
        self.idGrupo = 0
        self.nombreGrupo = ""
        self.estudiantes = List<Estudiante>()
    }
    
}

