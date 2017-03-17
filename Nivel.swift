//
//  Nivel.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Nivel, rhs: Nivel) -> Bool {
    return lhs.idNivel == rhs.idNivel
}

class Nivel: Object{
    
    dynamic var idNivel: String = ""
    dynamic var nombreNivel: String = ""
    dynamic var grados: Array<Grado>!
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idNivel = json["idNivel"].stringValue
        self.nombreNivel = json["nombreNivel"].stringValue
        let gradosNivel = json ["grados"]
        
        for (_, subJson) : (String, JSON) in gradosNivel{
            let currentGrado = Grado(subJson)
            self.grados.append(currentGrado)
        }

    }
    
}
