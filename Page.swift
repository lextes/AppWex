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
    
    dynamic var idPage: Int = 0
    dynamic var numeroPage: Int = 0
    var dinamicas: List<Dinamica>!
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idPage = json["idPage"].intValue
        self.numeroPage = json["numeroPage"].intValue
        let dinamicasPage = json ["dinamicas"]
        
        for (_, subJson) : (String, JSON) in dinamicasPage{
            let currentDinamica = Dinamica(subJson)
            self.dinamicas.append(currentDinamica)
        }
    }
    
    convenience required init(idPage: Int, numeroPage: Int, dinamicasPage: List<Dinamica>?) {
        self.init()
        self.idPage = idPage
        self.numeroPage = numeroPage
        
        for i in 0 ... (dinamicasPage?.count)! - 1{
            self.dinamicas.append((dinamicasPage?[i])!)
        }
    }
    
    convenience required init(_ idNivel: Int) {
        self.init()
        self.idPage = 0
        self.numeroPage = 0
        self.dinamicas = List<Dinamica>()
    }
    
}
