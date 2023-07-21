//
//  ToDoItem.swift
//  toDoList
//
//  Created by Scholar on 7/14/23.
//

import Foundation
class ToDoItem: Identifiable{
    var id = UUID()
    var title = ""
    var isImportant = false
    var notes = ""
    
    init(title: String, isImportant: Bool = false, notes: String) {
            self.title = title
            self.isImportant = isImportant
            self.notes = notes
        }
}
