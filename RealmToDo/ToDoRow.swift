//
//  ToDoRow.swift
//  RealmToDo
//
//  Created by 霜村恭子 on 2022/06/10.
//

import SwiftUI

struct ToDoRow: View {
    
    var todo: ToDo
    var today: String
    
    var body: some View {
        
        HStack {
            VStack{
                Text(todo.title ?? "")
                Text(todo.detail ?? "")
            }
            VStack{
                Text(today)
            }
            Spacer()
        }
    }
}
