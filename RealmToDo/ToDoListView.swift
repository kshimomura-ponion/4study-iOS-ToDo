//
//  ToDoList.swift
//  RealmToDo
//
//  Created by 霜村恭子 on 2022/06/10.
//

import SwiftUI

struct ToDoListView: View {
    @ObservedObject var todoVM = ToDoMainViewModel()
    
    var body: some View {
        
        let todoList = todoVM.todoList.sorted { $01.postedDate  < $1.postedDate  }
        
        NavigationView {
            VStack{
                NavigationLink(destination:
                                ToDoEdit()
                ) {
                    Image(systemName: "pencil")
                }
                List(todoList, id: \.id) { todo in
                    NavigationLink(destination:
                    ToDoDetail(todo: todo)) {
                    ToDoRow(todo: todo, today: todoVM.today(dt: todo.postedDate))
                    }
                }
            }.navigationTitle("ToDoList")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
