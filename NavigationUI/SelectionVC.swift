//
//  SelectionVC.swift
//  Swift-Samples
//
//  Created by Joseph McCraw on 1/20/20.
//  Copyright © 2020 Joseph McCraw. All rights reserved.
//

import UIKit

class SelectionVC: UITableViewController {
    var categories: [Category] = []
    var entries: [Entry] = []
//    let constants = Constants()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCategorySection()
        configureEntries()
    }
    private func configureCategorySection() {
        let firstCategory = Category(title:  Constants.viewElements, description: "UIKit only")
        categories.append(firstCategory)
    }
    private func configureEntries() {
        let firstEntry = Entry(title: "Rounded Text Label", description: "Custom UITextLabel class with @IBDesignable controls", category: categories.first)
        entries.append(firstEntry)
        
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return categories.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return entries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectionCell", for: indexPath)
        let cellText = "Title: \(entries[indexPath.row].title), Description: \(entries[indexPath.row].description) row: \(indexPath.row) "
        print(cellText)
        cell.textLabel?.text = entries[indexPath.row].title
        cell.detailTextLabel?.text = entries[indexPath.row].description
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
