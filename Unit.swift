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
    
    dynamic var idUnit: Int = 0
    dynamic var nombreUnit: String!
    dynamic var periodo: String!
    var materias: List<Materia>!

    
    convenience required init(_ json: JSON) {
        self.init()
        self.idUnit = json["idUnit"].intValue
        self.nombreUnit = json["nombreUnit"].stringValue
        self.periodo = json["periodo"].stringValue

        let materiasUnit = json ["materias"]
        
        for (_, subJson) : (String, JSON) in materiasUnit{
            let currentMateria = Materia(subJson)
            self.materias.append(currentMateria)
        }
    }
    
    convenience required init(idUnit: Int, nombreUnit: String, periodo: String?, materias: List<Materia>? ) {
        self.init()
        self.idUnit = idUnit
        self.nombreUnit = nombreUnit
        self.periodo = periodo

        
        for i in 0 ... (materias?.count)! - 1{
            self.materias.append((materias?[i])!)
        }
    }
    
    convenience required init(_ idUnit: Int) {
        self.init()
        self.idUnit = 0
        self.nombreUnit = ""
        self.periodo = ""
        self.materias = List<Materia>()
        
    }
    
}

