//
//  EntryListTableViewController.swift
//  w1.2d1 journal terminal
//
//  Created by Michael Flowers on 1/22/18.
//  Copyright © 2018 Michael Flowers. All rights reserved.
//

import UIKit

class EntryListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return EntryController.shared.entries.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //get cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath)
        //get information
         let entry = EntryController.shared.entries[indexPath.row]
        // Combine the cell and data/info
        cell.textLabel?.text = entry.title

        return cell
    }

    // Override to support editing the table view.
    //what are we deleting we are deleting an entry. We are deleting an entry so that means we need to find the index path inwhich it is located.
    //we have to use the entries array to find the index
    //do this 3 times without referencing code.1.2.
    //1.get the indexPath from the entries array that we want to delete
    //2.shared.remove function passing in the constant we assigned the indexPath to
    //3. reloadTable view, and do it in the viewWillAppear function
    //we have to use willappear becasue we are reloading data/view
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
         let entryToDelete = EntryController.shared.entries[indexPath.row]
            EntryController.shared.remove(entry: entryToDelete)
            tableView.reloadData()
        }    
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
