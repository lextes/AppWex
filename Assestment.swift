//
//  Assestment.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Assesment, rhs: Assesment) -> Bool {
    return lhs.idAssesment == rhs.idAssesment
}

class Assesment: Object {
    
    dynamic var idAssesment: Int = 0
    dynamic var nombreAssesment: String = ""
    var paginas: List<Page>!
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idAssesment = json["idAssesment"].intValue
        self.nombreAssesment = json["nombreAssesment"].stringValue
        let paginasAssestment = json ["paginas"]
        
        for (_, subJson) : (String, JSON) in paginasAssestment{
            let currentPagina = Page(subJson)
            self.paginas.append(currentPagina)
        }
    }
    
    
    convenience required init(idAssesment: Int, nombreAssesment: String, paginas: List<Page>?) {
        self.init()
        self.idAssesment = idAssesment
        self.nombreAssesment = nombreAssesment
        
        for i in 0 ... (paginas?.count)! - 1{
            self.paginas.append((paginas?[i])!)
        }
    }
    
    convenience required init(_ idAssesment: Int) {
        self.init()
        self.idAssesment = 0
        self.nombreAssesment = ""
        self.paginas = List<Page>()
    }
    
}
