//
//  ToDoEdit.swift
//  RealmToDo
//
//  Created by 霜村恭子 on 2022/06/10.
//

import SwiftUI

struct ToDoEdit: View {
    @ObservedObject var todoEditVM = ToDoEditViewModel()

    @State var title: String = ""
    @State var detail: String = ""
    
    var todo: ToDo?
    
    var body: some View {
        
        TextField("Title:", text: $title).padding(7)
            .border(.gray)
            .cornerRadius(5)

        TextField("Detail:", text: $detail).padding(7)
        .border(.gray)
        .cornerRadius(5)
        
        Button(action: {
            if(todo != nil) {
                todoEditVM.update(orgTodo: todo!, title: title, detail: detail)
            } else {
                todoEditVM.add(title: title, detail: detail)
            }
        },label: {
            Text("Add")
                .bold()
        }
        )
        .buttonStyle(.borderedProminent)
    }

}

