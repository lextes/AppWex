//
//  Usuario.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Usuario, rhs: Usuario) -> Bool {
    return lhs.token == rhs.token
}

class Usuario: Object {
    
    dynamic var token: String = ""
    dynamic var persona: Persona!

    convenience required init(_ json: JSON) {
        self.init()
        token = json["token"].stringValue
        persona = Persona(json)
    }
    
    convenience required init(_ token: String) {
        self.init()
        self.token = ""
        self.persona = Persona()
    }
}

