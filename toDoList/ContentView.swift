//
//  ContentView.swift
//  toDoList
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color(hue: 0.898, saturation: 0.599, brightness: 0.64))
                
            Spacer()
                Button(action: {
                    self.showNewTask = true
                }) {
                    Text("+")
                        .font(.largeTitle)
                        .foregroundColor(Color.purple)
                       
                }
                
                }
                
            }.padding()
            Spacer()
        List {
                                ForEach (toDoItems) { toDoItem in
                                    if toDoItem.isImportant == true {
                                        Text("‼️" + toDoItem.title)
                                    } else {
                                        Text(toDoItem.title)
                                    }
                                }
        }.listStyle(.plain)
        
        if showNewTask{
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
