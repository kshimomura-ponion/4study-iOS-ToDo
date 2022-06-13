//
//  ToDo.swift
//  RealmToDo
//
//  Created by 霜村恭子 on 2022/06/10.
//

import RealmSwift
import SwiftUI

class ToDo: Object {
    @objc dynamic var id: String = NSUUID().uuidString
    @objc dynamic var title: String? = nil
    @objc dynamic var detail: String? = nil
    @objc dynamic var postedDate = Date()

    //Primary Keyの設定
    override static func primaryKey() -> String? {
        return "id"
    }
}

extension ToDo {
    private static var config = Realm.Configuration(schemaVersion: 1)
    private static var realm = initRealm()
    
    static func initRealm() -> Realm{
        config.deleteRealmIfMigrationNeeded = true
       return try! Realm(configuration: config)
    }
    
    
    static func findAll() -> Results<ToDo> {
        realm.objects(ToDo.self)
    }
    
    static func add(_ todo: ToDo) {
        try! realm.write {
            realm.add(todo, update: .modified)
        }
    }
    
    static func delete(_ todo: ToDo) {
        try! realm.write {
            realm.delete(todo)
        }
    }
    
    static func delete(_ todoList: [ToDo]) {
        try! realm.write {
            realm.delete(todoList)
        }
    }
}
