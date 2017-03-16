//
//  GrupoMaestro.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: GrupoMaestro, rhs: GrupoMaestro) -> Bool {
    return lhs.idMaestro == rhs.idMaestro && lhs.idGrupo == rhs.idGrupo
}

class GrupoMaestro: Object {
    
    dynamic var idMaestro: String = ""
    dynamic var idGrupo: String = ""
    
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idMaestro = json["idMaestro"].stringValue
        self.idGrupo = json["idGrupo"].stringValue
    }
    
}
