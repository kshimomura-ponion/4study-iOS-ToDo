//
//  ToDoDetail.swift
//  RealmToDo
//
//  Created by 霜村恭子 on 2022/06/10.
//

import SwiftUI

struct ToDoDetail: View {
    var todo: ToDo
    
    var body: some View {
        NavigationView {

            VStack(alignment: .leading) {
                Text(todo.title ?? "")
                    .font(.title)
                    .foregroundColor(.primary)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .toolbar {
                ToolbarItem(placement: .automatic){
                    NavigationLink(destination:
                                    ToDoEdit(title:todo.title ?? "", detail:todo.detail ?? "")
                    ) {
                        Image(systemName: "pencil")
                    }
                }
            }
        }
    }
}

struct ToDoDetail_Previews: PreviewProvider {
    static var previews: some View {
        ToDoDetail(todo: ToDo())
    }
}
