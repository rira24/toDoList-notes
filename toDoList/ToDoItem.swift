//
//  ToDoItem.swift
//  toDoList
//
//  Created by Scholar on 7/14/23.
//

import Foundation
class toDo{
    var title = ""
    var isImportant = false
    
init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}
