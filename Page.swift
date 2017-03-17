//
//  Page.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Page, rhs: Page) -> Bool {
    return lhs.idPage == rhs.idPage
}

class Page: Object{
    
    dynamic var idPage: String = ""
    dynamic var numeroPage: Int = 0
    dynamic var dinamicas: Array<Dinamica>!
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idPage = json["idPage"].stringValue
        self.numeroPage = json["numeroPage"].intValue
        let dinamicasPage = json ["dinamicas"]
        
        for (_, subJson) : (String, JSON) in dinamicasPage{
            let currentDinamica = Dinamica(subJson)
            self.dinamicas.append(currentDinamica)
        }
    }
    
}
