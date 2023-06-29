//
//  ContentView.swift
//  Todo List final
//
//  Created by Jude Shorbaji on 6/28/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems:[ToDoItem]=[]
    @State var showNewTask=false
    
   
    var body: some View {
        VStack{
            HStack{
                Text("To-Do List")
                    .font(.title)
                    .fontWeight(.black)
                Spacer()
                Button(action: {
                    self.showNewTask=true
                }) {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                }
            
            }
            .padding(.all, 20.0)
            List{
                ForEach(toDoItems){
                    toDoItem in
                    if toDoItem.isImportant==true{
                        Text("!!! \(toDoItem.title)"  )
                            
                    }
                    else{
                        Text(toDoItem.title)
                    }
                }
            }
            .listStyle(.plain)
            Spacer()
            if showNewTask==true{
                
                NewToDoView(title: "", isImportant: false,toDoItems: $toDoItems,showNewTask: $showNewTask
                )
                    
                
            }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
