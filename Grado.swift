//
//  Grado.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Grado, rhs: Grado) -> Bool {
    return lhs.idGrado == rhs.idGrado
}

class Grado: Object {
    
    dynamic var idGrado: String = ""
    dynamic var nombreGrado: String = ""
    dynamic var grupos: Array<Grupo>!
    
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idGrado = json["idGrado"].stringValue
        self.nombreGrado = json["nombreGrado"].stringValue
        let gruposGrado = json ["grupos"]
    
        for (_, subJson) : (String, JSON) in gruposGrado{
            let currentGrupo = Grupo(subJson)
            self.grupos.append(currentGrupo)
        }
    }
    
}
