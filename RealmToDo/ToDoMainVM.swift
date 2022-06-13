//
//  ToDMainVM.swift
//  RealmToDo
//
//  Created by 霜村恭子 on 2022/06/10.
//

import Foundation

class ToDoMainViewModel: ObservableObject {
    @Published var todoList: [ToDo] = Array(ToDo.findAll())
    
    func today(dt: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yMMMdHms", options:0, locale: Locale(identifier: "ja_JP"))
        
        return dateFormatter.string(from:dt)
    }
}
