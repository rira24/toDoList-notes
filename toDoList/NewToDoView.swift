//
//  NewToDoView.swift
//  toDoList
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct NewToDoView: View {
    @Environment(\.managedObjectContext) var context
    @State var title: String
    @State var isImportant: Bool
    @State var notes: String
 
    @Binding var showNewTask : Bool
    var body: some View {
        
            VStack {
                Text("Title:")
                    .fontWeight(.bold)
                
                TextField("Enter the title...", text: $title)
                
                //            Toggle(isOn: $isImportant) {
                //                Text("Is it Important?")
                //            }
                Text("Notes:")
                    .fontWeight(.medium)
                
                TextField("Enter your notes...", text: $notes)
                
                Button(action:
                        {self.addTask(title: self.title, notes: self.notes); self.showNewTask = false
                    
                    
                }) {
                    Text("Add")
                    
                }
                
            }.padding()
        
        
    }
    private func addTask(title: String, isImportant: Bool = false, notes: String) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.notes = notes
       // task.isImportant = isImportant
                
        do {
                    try context.save()
        } catch {
                    print(error)
        }
        }
    
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, notes: "",showNewTask: .constant(true))
    }
    
}

