//
//  StorageManager.swift
//  NotionTest
//
//  Created by Konstantin on 18.03.2022.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveFolder(_ folder: [Folder]) {
        try! realm.write({
            realm.add(folder)
        })
    }
    
}
