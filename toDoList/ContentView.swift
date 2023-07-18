//
//  ContentView.swift
//  toDoList
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color(hue: 0.898, saturation: 0.599, brightness: 0.64))
                
            Spacer()
                Button(action: {
                                    
                }) {
                    Text("+")
                        .font(.largeTitle)
                        .foregroundColor(Color.purple)
                       
                }
                
                
            }.padding()
            Spacer()
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
