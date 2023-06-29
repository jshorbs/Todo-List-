//
//  ContentView.swift
//  Todo List final
//
//  Created by Jude Shorbaji on 6/28/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            HStack{
                Text("To-Do List")
                    .font(.title)
                    .fontWeight(.black)
                Spacer()
                Button(action: {
                                    
                }) {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                }
            }
            .padding(.all, 20.0)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
