//
//  ToDoItem.swift
//  Todo List final
//
//  Created by Jude Shorbaji on 6/28/23.
//

import Foundation
class ToDoItem{
    var title:String
    var isImportant:Bool
    init(title:String,isImportant:Bool=false)
    {
        self.title=title
        self.isImportant=isImportant
    }
}


