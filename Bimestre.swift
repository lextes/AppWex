//
//  Bimestre.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//
import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Bimestre, rhs: Bimestre) -> Bool {
    return lhs.id == rhs.id
}

class Usuario: Object, Equatable {
    
    dynamic var id: String = ""
    dynamic var nombre: String!
    dynamic var periodo: String!
    
    
    
    //    required init() {
    //        super.init()
    //    }
    
    
    convenience required init(_ json: JSON) {
        self.init()
        token = json["token"].stringValue
        
        persona = Persona(json)
    }
    
}
