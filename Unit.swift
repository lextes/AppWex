//
//  Unit.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Unit, rhs: Unit) -> Bool {
    return lhs.idUnit == rhs.idUnit
}

class Unit: Object {
    
    dynamic var idUnit: String = ""
    dynamic var nombreUnit: String!
    dynamic var periodo: String!
    dynamic var materias: Array<Materia>!

    
    convenience required init(_ json: JSON) {
        self.init()
        self.idUnit = json["idUnit"].stringValue
        self.nombreUnit = json["nombreUnit"].stringValue
        self.periodo = json["periodo"].stringValue

        let materiasUnit = json ["materias"]
        
        for (_, subJson) : (String, JSON) in materiasUnit{
            let currentMateria = Materia(subJson)
            self.materias.append(currentMateria)
        }
    }
    
}

