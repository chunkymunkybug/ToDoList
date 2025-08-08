//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    var body: some View {
        VStack {
            HStack{
                Text ("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                Spacer () //pushes text to left
                Button {
                    withAnimation {
                        showNewTask = true
                    } //end of animation
                }label: {
                    Text ("+")
                        .font (.title)
                        .fontWeight(.bold)
                } //end of + button
            }//end of HStack
            .padding()
            Spacer ()
            
            List {
                ForEach(toDos){ toDoItem in
                    Text (toDoItem.title)
                }
            }//end of list
            
            if showNewTask {
                NewToDoView ()
            }//end of if
        }//end of VStack
        .padding()
        
    }
}

#Preview {
    ContentView()
}
