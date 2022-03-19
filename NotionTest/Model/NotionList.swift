//
//  NotionList.swift
//  NotionTest
//
//  Created by Konstantin on 18.03.2022.
//

import RealmSwift
import UIKit

class Notion: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var note = ""
    @objc dynamic var date = Date()
    var pictures = List<Picture>()
    @objc dynamic var fontName: String? = nil
    @objc dynamic var fontSize: Int = 0
    @objc dynamic var fontView: String? = nil
    
}

class Picture: Object {
    @objc var picture = Data()
}
