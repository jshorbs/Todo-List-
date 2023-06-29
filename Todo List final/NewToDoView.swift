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
    struct NewToDoView_Previews: PreviewProvider {
        static var previews: some View {
            NewToDoView(title: "", isImportant: false)
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
        .padding(.horizontal, 20.0)
    }
}



