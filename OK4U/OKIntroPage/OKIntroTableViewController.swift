//
//  OKIntroTableViewController.swift
//  OK4U
//
//  Created by Daniel Kim on 10/1/19.
//  Copyright © 2019 Daniel Kim. All rights reserved.
//

import UIKit
import Firebase

class OKIntroTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return memberCount
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OKIntroTableViewCell", for: indexPath) as! OKIntroTableViewCell
        let row = indexPath.row
        
        // Setting the image
        let memberImageView = UIImageView(image: UIImage(named: memberNames[row]+"image"))
        let padding = CGFloat(10)
        let imageWidth = cell.layer.frame.width - CGFloat(padding*2)
        memberImageView.frame = CGRect(x: padding, y: padding, width: imageWidth, height: imageWidth)
        cell.addSubview(memberImageView)
        
        // Setting the UILabel
        let memberNameLabel = UILabel()
        let labelHeight = CGFloat(20)
        let labelWidth = cell.layer.frame.width - padding*2
        let labelX = padding
        let labelY = imageWidth + padding*2
        memberNameLabel.frame = CGRect(x: labelX, y: labelY, width: labelWidth, height: labelHeight)
        memberNameLabel.text = memberNames[row]
        cell.addSubview(memberNameLabel)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.width + 100
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
