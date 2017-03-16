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
    return lhs.idAssesmentn == rhs.idAssesment
}

class Assesment: Object, Equatable {
    
    dynamic var idAssesment: String = ""
    dynamic var nombreAssesment: String = ""
    dynamic var paginas: Array<Page>!
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idAssesment = json["idAssesment"].stringValue
        self.nombreAssesment = json["nombreAssesment"].stringValue
        let paginasAssestment = json ["paginas"]
        
        for (_, subJson) : (String, JSON) in paginasAssestment{
            let currentPagina = Pagina(subJson)
            self.paginas.append(currentPagina)
        }
    }
    
}
