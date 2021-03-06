//
//  Persona.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

//
//  Maestro.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Persona, rhs: Persona) -> Bool {
    return lhs.idPersona == rhs.idPersona
}

class Persona: Object {
    
//    fileprivate var dateFormatter = DateFormatter(coder: true)
//    fileprivate var dateFormatterInverso = DateFormatter()
    
    dynamic var idPersona: Int = 0
    dynamic var foto: String?
    dynamic var nombrePersona: String = ""
    dynamic var apellido: String = ""
    dynamic var sexo: String = ""
    dynamic var email: String?
    dynamic var fechaNacimiento: Date?
    
    convenience required init(_ json: JSON) {
        self.init()
        
        self.idPersona = json["idPersona"].intValue
//        dateFormatter.dateFormat = "yyyy-MM-dd"
//        dateFormatterInverso.dateFormat = "dd/MMM"
        
        let nombreStr = json["nombrePersona"].string
        if let tmp = nombreStr {
            self.nombrePersona = tmp
        }
        
        let apellidoStr = json["apellido"].string
        if let tmp = apellidoStr {
            self.apellido = tmp
        }
        
        email = json["email"].string
        self.foto = json["image"].stringValue
        
    }
    
    convenience required init(idPersona: Int, nombrePersona: String, apellido: String) {
        self.init()
        self.idPersona = idPersona
        self.nombrePersona = nombrePersona
        self.apellido = apellido
        self.email = ""
        self.foto = ""
    }
    
    convenience required init(_ idPersona: Int) {
        self.init()
        self.idPersona = 0
        self.nombrePersona = ""
        self.apellido = ""
        self.email = ""
        self.foto = ""
    }

    func getFullName() -> String {
        return "\(nombrePersona) \(apellido)"
    }
    
}


