//
//  ToDoEditVM.swift
//  RealmToDo
//
//  Created by 霜村恭子 on 2022/06/13.
//

import Foundation

class ToDoEditViewModel: ObservableObject {

    func add(title: String, detail: String) {
        guard !title.isEmpty else { return }
        
        let dt = Date()
        
        let todo = ToDo()
        todo.title = title
        todo.detail = detail
        todo.postedDate = dt
        ToDo.add(todo)
    }
    
    func update(orgTodo:ToDo, title: String, detail: String) {
        guard !title.isEmpty else { return }
        
        let dt = Date()
        
        let todo = ToDo()
        todo.id = orgTodo.id
        todo.title = title
        todo.detail = detail
        todo.postedDate = dt
        ToDo.add(todo)
    }
    
    func today(dt: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yMMMdHms", options:0, locale: Locale(identifier: "ja_JP"))
        
        return dateFormatter.string(from:dt)
    }
}
