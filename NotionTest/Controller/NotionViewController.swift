//
//  NotionViewController.swift
//  NotionTest
//
//  Created by Konstantin on 18.03.2022.
//

import UIKit

class NotionViewController: UIViewController {
    
    var currentNotion: Notion!
    
    @IBOutlet var mainTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        mainTextField.text = currentNotion.note
    }
    
}
