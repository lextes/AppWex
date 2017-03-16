//
//  Dinamica.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//
import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Dinamica, rhs: Dinamica) -> Bool {
    return lhs.idDinamica == rhs.idDinamica
}

class Dinamica: Object, Equatable {
    
    dynamic var idDinamica: String = ""
    dynamic var nombreDinamica: String!
    dynamic var porciento: Float!
    dynamic var calificacion: Float!

    convenience required init(_ json: JSON) {
        self.init()
        self.idDinamica = json["idDinamica"].stringValue
        self.nombreDinamica = json["nombreDinamica"].stringValue
        self.porciento = json["porciento"].stringValue
        self.calificacion = json["calificacion"].stringValue
    }
    
}


