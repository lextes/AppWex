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

class Dinamica: Object{
    
    dynamic var idDinamica: Int = 0
    dynamic var nombreDinamica: String!
    dynamic var porciento: Int = 0
    dynamic var calificacion: Int = 0

    convenience required init(_ json: JSON) {
        self.init()
        self.idDinamica = json["idDinamica"].intValue
        self.nombreDinamica = json["nombreDinamica"].stringValue
        self.porciento = json["porciento"].intValue
        self.calificacion = json["calificacion"].intValue
    }
    
    convenience required init(idDinamica: Int!, nombreDinamica: String?, porciento: Int?, calificacion: Int?) {
        self.init()
        self.idDinamica = idDinamica
        self.nombreDinamica = nombreDinamica
        self.porciento = porciento!
        self.calificacion = calificacion!
    }
    
    convenience required init(_ idDinamica: Int) {
        self.init()
        self.idDinamica = 0
        self.nombreDinamica = ""
        self.porciento = 0
        self.calificacion = 0
    }
    
}


