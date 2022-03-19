//
//  FolderList.swift
//  NotionTest
//
//  Created by Konstantin on 18.03.2022.
//

import RealmSwift
import Foundation

class Folder: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var icon: String = "folder"
    @objc dynamic var date = Date()
    let notions = List<Notion>()
    
}
