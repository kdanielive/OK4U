//
//  NewsfeedTableViewController.swift
//  OK4U
//
//  Created by Daniel Kim on 11/13/19.
//  Copyright © 2019 Daniel Kim. All rights reserved.
//

import UIKit

class NewsfeedTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationController?.navigationBar.isHidden = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        if(unfurl_upcoming) {
            return 2
        } else {
            return 1
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if(section==0) {
            return 1
        } else {
            return 10
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section==0)  {
            let cell = tableView.dequeueReusableCell(withIdentifier: "newsfeed1", for: indexPath) as! NewsfeedTableViewCell
            let backgroundImage = UIImage(named: "newscardtestimage")!
            let backgroundImageView = UIImageView(image: backgroundImage)
            
            let ratio = backgroundImage.size.height / backgroundImage.size.width
            let backgroundWidth = self.view.frame.width
            backgroundImageView.frame = CGRect(x: 0, y: 0, width: backgroundWidth, height: ratio*backgroundWidth)
            backgroundImageView.alpha = 0.4
            backgroundImageView.contentMode = .scaleAspectFit
            
            let soonView = UILabel()
            let padding = CGFloat(20)
            soonView.text = "Upcoming Event..."
            soonView.font = UIFont.boldSystemFont(ofSize: 25)
            soonView.center = CGPoint(x: cell.frame.size.width/4, y: cell.frame.size.height/4)
            soonView.sizeToFit()
            soonView.textColor = UIColor(red: 12/255, green: 67/255, blue: 46/255, alpha: 1.0)
            
            soonView.layer.shadowColor = UIColor.black.cgColor
            soonView.layer.shadowRadius = 2.0
            soonView.layer.shadowOpacity = 0.5
            soonView.layer.shadowOffset = CGSize(width: 4, height: 4)
            soonView.layer.masksToBounds = false

            cell.addSubview(backgroundImageView)
            cell.addSubview(soonView)
            // Configure the cell...

            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "newsfeed2", for: indexPath) as! NewsfeedTableViewCell
            
            let padding = CGFloat(5)
            
            // Background Image Part
            let backgroundImage = UIImage(named: "ok20191")!
            let backgroundImageView = UIImageView()
            backgroundImageView.contentMode = .scaleAspectFill
            backgroundImageView.image = backgroundImage
            
            backgroundImageView.frame = CGRect(x: padding, y: padding, width: cell.frame.width-padding*2, height: cell.frame.height-padding*2)
            backgroundImageView.alpha = 0.7
            backgroundImageView.clipsToBounds = true
            
            cell.addSubview(backgroundImageView)
            
            // Date Label Part
            let dateLabel = UILabel()
            dateLabel.text = "2019/11"
            dateLabel.font = UIFont.boldSystemFont(ofSize: 15)
            dateLabel.textColor = UIColor(red: 12/255, green: 67/255, blue: 46/255, alpha: 1.0)
            dateLabel.backgroundColor = UIColor.white
            dateLabel.frame = CGRect(x: padding, y: padding, width: 0, height: 0)
            dateLabel.sizeToFit()
            backgroundImageView.addSubview(dateLabel)
            
            // Title Label Part
            let titleLabel = UILabel()
            titleLabel.text = "옼식당"
            titleLabel.font = UIFont.boldSystemFont(ofSize: 15)
            titleLabel.textColor = UIColor(red: 12/255, green: 67/255, blue: 46/255, alpha: 1.0)
            titleLabel.backgroundColor = UIColor.white
            titleLabel.sizeToFit()
            titleLabel.frame = CGRect(x: backgroundImageView.frame.width-padding-titleLabel.frame.width, y: backgroundImageView.frame.height-padding-titleLabel.frame.height, width: 0, height: 0)
            titleLabel.sizeToFit()
            backgroundImageView.addSubview(titleLabel)
            
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        /*
        let backgroundImage = UIImage(named: "ok20191")!
        let ratio = backgroundImage.size.height / backgroundImage.size.width
        let backgroundWidth = self.view.frame.width
        */
        if(indexPath.section==0) {
            return self.view.frame.size.height / 3
        } else  {
            return self.view.frame.size.height / 5
        }
    }
    
    @IBAction func unwindToNewsfeed(segue:UIStoryboardSegue) { }

    
    /*
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 30))
        headerView.backgroundColor  = UIColor.clear
        
        let titleLabel = UILabel()
        titleLabel.text = "Coming soon..."
        titleLabel.font = UIFont.boldSystemFont(ofSize: 17)
        titleLabel.frame = CGRect(x: 20, y: 0, width: tableView.bounds.size.width-20, height: 30)
        headerView.addSubview(titleLabel)
        
        return headerView
    }
    */
    

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
