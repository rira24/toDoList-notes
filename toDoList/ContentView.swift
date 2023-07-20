//
//  ContentView.swift
//  toDoList
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var context
    @FetchRequest(
        entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    
    var toDoItems: FetchedResults<ToDo>
    @State private var showNewTask = false
    private func deleteTask(offsets: IndexSet) {
        withAnimation {
            offsets.map { toDoItems[$0] }.forEach(context.delete)
            
            do {
                try context.save()
            } catch {
                print(error)
            }
        }
    }
    var body: some View {
        
            VStack {
        
                HStack {
                    Text("Notes")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color.green
                        )
                    Image("duckP1")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.all, 60.0)
                        
                    
                    Spacer()
                    Button(action: {
                        self.showNewTask = true
                    }) {
                        Text("+")
                            .font(.largeTitle)
                            .foregroundColor(Color.green)
                        
                    }
                    
                }
                
            }.padding()
        
            Spacer()
            List {
                ForEach (toDoItems) { toDoItem in
                    //
                    Text("\(toDoItem.title!):")
                        .fontWeight(.bold)
                    Text(toDoItem.notes!)
                        .foregroundColor(Color.green
                        )
                    //
                }.onDelete(perform: deleteTask)
            }.listStyle(.plain)
            
            if showNewTask{
                NewToDoView(title: "", isImportant: false, notes: "", showNewTask: $showNewTask)
            }
            
            
            
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
