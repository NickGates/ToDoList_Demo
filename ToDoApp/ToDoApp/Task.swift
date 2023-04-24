//
//  Task.swift
//  ToDoApp
//
//  Created by Nikita on 24.04.2023.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true)  var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false 
}
