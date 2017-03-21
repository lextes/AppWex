//
//  Materia.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 16/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation
import Realm
import RealmSwift
import SwiftyJSON

func ==(lhs: Materia, rhs: Materia) -> Bool {
    return lhs.idMateria == rhs.idMateria
}

class Materia: Object {
    
    dynamic var idMateria: Int = 0
    dynamic var nombreMateria: String = ""
    var lessons: List<Lesson>!
    dynamic var assesment: Assesment!
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idMateria = json["idMateria"].intValue
        self.nombreMateria = json["nombreMateria"].stringValue
        let lessonsMateria = json ["lessons"]
        
        for (_, subJson) : (String, JSON) in lessonsMateria{
            let currentLesson = Lesson(subJson)
            self.lessons.append(currentLesson)
        }
        self.assesment = json ["assesment"] as! Assesment
    }
    
    convenience required init(idMateria: Int, nombreMateria: String, lessons: List<Lesson>?, assesment: Assesment) {
        self.init()
        self.idMateria = idMateria
        self.nombreMateria = nombreMateria
        
        for i in 0 ... (lessons?.count)! - 1{
            self.lessons.append((lessons?[i])!)
        }
        self.assesment = Assesment(idAssesment: assesment.idAssesment, nombreAssesment: assesment.nombreAssesment, paginas: assesment.paginas)
    }
    
    convenience required init(_ idMateria: Int) {
        self.init()
        self.idMateria = 0
        self.nombreMateria = ""
        self.lessons = List<Lesson>()
        self.assesment = Assesment()
    }
    
}
