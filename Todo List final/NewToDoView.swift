//
//  NewToDoView.swift
//  Todo List final
//
//  Created by Jude Shorbaji on 6/28/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems:[ToDoItem]

    private func addTask(title: String, isImportant: Bool = false){
        let task = ToDoItem(title: title, isImportant: isImportant)
                toDoItems.append(task)
    }
    @Binding var showNewTask : Bool
    struct NewToDoView_Previews:
        PreviewProvider {
        static var previews: some View {
            NewToDoView(title: "", isImportant: false, toDoItems: .constant([]), showNewTask: .constant(true)
)
        }
    }
    var body: some View {
        VStack{
            HStack{
                Text("Task Title")
                    .font(.title)
                TextField("Task Description",text : $title)
                    .font(.title)
            }
            Toggle(isOn: $isImportant)
            {
                Text("is it important?")
                    .font(.title)
            }
            
        }
        .padding(.all, 20.0)
        Button("Confirm") {
            self.addTask(title: self.title, isImportant: self.isImportant)
            self.showNewTask=false
        }
        .padding(.horizontal, 20.0)
    }
}




