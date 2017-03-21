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
    
    dynamic var idLesson: Int = 0
    dynamic var nombreLesson: String = ""
    var paginas: List<Page>!
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idLesson = json["idLesson"].intValue
        self.nombreLesson = json["nombreLesson"].stringValue
        let paginasLesson = json ["paginas"]
        
        for (_, subJson) : (String, JSON) in paginasLesson{
            let currentPagina = Page(subJson)
            self.paginas.append(currentPagina)
        }
    }
    
    convenience required init(idLesson: Int, nombreLesson: String, paginas: List<Page>?) {
        self.init()
        self.idLesson = idLesson
        self.nombreLesson = nombreLesson
        
        for i in 0 ... (paginas?.count)! - 1{
            self.paginas.append((paginas?[i])!)
        }
    }
    
    convenience required init(_ idLesson: Int) {
        self.init()
        self.idLesson = 0
        self.nombreLesson = ""
        self.paginas = List<Page>()
    }

    
}
