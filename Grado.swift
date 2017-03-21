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
    
    dynamic var idGrado: Int = 0
    dynamic var nombreGrado: String = ""
    var grupos: List<Grupo>!
    
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idGrado = json["idGrado"].intValue
        self.nombreGrado = json["nombreGrado"].stringValue
        let gruposGrado = json ["grupos"]
    
        for (_, subJson) : (String, JSON) in gruposGrado{
            let currentGrupo = Grupo(subJson)
            self.grupos.append(currentGrupo)
        }
    }
    
    convenience required init(idGrado: Int, nombreGrado: String, grupos: List<Grupo>?) {
        self.init()
        self.idGrado = idGrado
        self.nombreGrado = nombreGrado
        
        for i in 0 ... (grupos?.count)! - 1{
            self.grupos.append((grupos?[i])!)
        }
    }
    
    convenience required init(_ idGrado: Int) {
        self.init()
        self.idGrado = 0
        self.nombreGrado = ""
        self.grupos = List<Grupo>()
    }
    
}
