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
    
    dynamic var idNivel: Int = 0
    dynamic var nombreNivel: String = ""
    var grados: List<Grado>!
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idNivel = json["idNivel"].intValue
        self.nombreNivel = json["nombreNivel"].stringValue
        let gradosNivel = json ["grados"]
        
        for (_, subJson) : (String, JSON) in gradosNivel{
            let currentGrado = Grado(subJson)
            self.grados.append(currentGrado)
        }

    }
    
    convenience required init(idNivel: Int, nombreNivel: String, grados: List<Grado>?) {
        self.init()
        self.idNivel = idNivel
        self.nombreNivel = nombreNivel
        
        for i in 0 ... (grados?.count)! - 1{
            self.grados.append((grados?[i])!)
        }
    }
    
    convenience required init(_ idNivel: Int) {
        self.init()
        self.idNivel = 0
        self.nombreNivel = ""
        self.grados = List<Grado>()
    }
    
}
