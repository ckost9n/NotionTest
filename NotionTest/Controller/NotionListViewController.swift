//
//  ViewController.swift
//  NotionTest
//
//  Created by Konstantin on 18.03.2022.
//

import UIKit
import RealmSwift

class NotionListTableViewController: UITableViewController {
    
    var currentFolder: Folder!
    
    private var currentNotions: Results<Notion>!
    private var filterNotions: Results<Notion>!
    
    private var isFiltering = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
//        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    private func setupView() {
  
        title = currentFolder.name
      
    }
    
    private func filteringNotions() {
        
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
//        return isFiltering ? filterNotions.count : currentNotions.count
        return currentFolder.notions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "notionCell", for: indexPath)

//        let folder = isFiltering ? filterNotions[indexPath.row] : currentNotions[indexPath.row]
        let folder = currentFolder.notions[indexPath.row]
        cell.textLabel?.text = folder.name

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let currentNotion = currentFolder.notions[indexPath.row]
        let notionListVC = segue.destination as! NotionViewController
        notionListVC.currentNotion = currentNotion
        
    }


}

