//
//  PlaylistListTableViewController.swift
//  PlaylistCoreData27
//
//  Created by Drew Seeholzer on 6/19/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import UIKit

class PlaylistListTableViewController: UITableViewController {

    @IBOutlet weak var playlistNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addButtonTapped(_ sender: Any) {
    }
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        return cell
    }




    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .fade)
        }    
    }


 
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }

}
