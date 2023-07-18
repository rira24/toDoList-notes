//
//  NewToDoView.swift
//  toDoList
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    var body: some View {
        VStack {
            Text("Task title:")
            
            TextField("Enter the task description...", text: $title)
            
            Toggle(isOn: $isImportant) {
                Text("Is it Important?")
            }
        }.padding()
        Button(action: {
            
        }) {
            Text("Add")
        }
        
        
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
    }
}

