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
    return lhs.idLesson == rhs.idLesson
}

class Materia: Object, Equatable {
    
    dynamic var idMateria: String = ""
    dynamic var nombreMateria: String = ""
    dynamic var lessons: Array<Lesson>!
    dynamic var assesment: Assesment!
    
    convenience required init(_ json: JSON) {
        self.init()
        self.idMateria = json["idMateria"].stringValue
        self.nombreMateria = json["nombreMateria"].stringValue
        let lessonsMateria = json ["lessons"]
        
        for (_, subJson) : (String, JSON) in lessonsMateria{
            let currentLesson = Lesson(subJson)
            self.lessons.append(currentLesson)
        }
        self.assesment = json ["assesment"]
    }
    
}
