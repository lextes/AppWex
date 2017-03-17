//
//  Lesson.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//


import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Lesson, rhs: Lesson) -> Bool {
    return lhs.idLesson == rhs.idLesson
}

class Lesson: Object {
    
    dynamic var idLesson: String = ""
    dynamic var nombreLesson: String = ""
    dynamic var paginas: Array<Page>!
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idLesson = json["idLesson"].stringValue
        self.nombreLesson = json["nombreLesson"].stringValue
        let paginasLesson = json ["paginas"]
        
        for (_, subJson) : (String, JSON) in paginasLesson{
            let currentPagina = Page(subJson)
            self.paginas.append(currentPagina)
        }
    }
    
}
