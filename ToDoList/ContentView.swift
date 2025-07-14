//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewtask = false
    
    var body: some View {

        VStack {
            HStack{
                Text("To-Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                
                Spacer()
                
                Button{
                    withAnimation {
                        showNewtask = true
                    }
                    
                }  label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                    
                }
            }
        }
        .padding()
        Spacer()
        
        if showNewtask {
            NewToDoView()
        }
    }
}

#Preview {
    ContentView()
}
