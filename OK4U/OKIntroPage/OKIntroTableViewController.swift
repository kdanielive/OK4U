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

    let okDetailCategories = ["오케이 역사", "역대 오케이 멤버", "오케이 이벤트 소개", "스폰서 소개"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        // MAYBE NEEDED? PROBABLY NOT
        //tableView.rowHeight = UITableView.automaticDimension
        //tableView.estimatedRowHeight = 150
        tableView.separatorStyle = .none
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        if(row==0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "OKIntroTableViewCell", for: indexPath) as! OKIntroTableViewCell
            
            cell.photo.image = UIImage(named: "ok20191")
            let image = UIImage(named: "ok20191")!
            
            // Changing the imageview constraint programmatically to fit the image
            let ratio = image.size.width / image.size.height
            let newConstraint = cell.aspectRatioConstraint.constraintWithMultiplier(ratio)
            cell.photo.removeConstraint(cell.aspectRatioConstraint)
            cell.photo.addConstraint(newConstraint)
            cell.photo.layoutIfNeeded()
            cell.aspectRatioConstraint = newConstraint

            cell.imageTextView.text = """
                김리지 장현화 최윤영 김석준 김지은 원성준 전상욱 홍성우 다민
            """
            cell.imageTextView.sizeToFit()
            let newConstraint2 = cell.textViewHeightConstraint.constraintWithConstant(cell.imageTextView.frame.height)
            cell.imageTextView.removeConstraint(cell.textViewHeightConstraint)
            cell.imageTextView.addConstraint(newConstraint2)
            cell.imageTextView.layoutIfNeeded()
            cell.textViewHeightConstraint = newConstraint2

            cell.yearLabel.text = "OK4Wellbeing @ '18-'19 2학기"
                        
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath) as! OKIntroDetailTableViewCell
            
            let idx = row-1
            let titleString = NSAttributedString(string:okDetailCategories[idx],
            attributes:[NSAttributedString.Key.foregroundColor: UIColor.white,
                        NSAttributedString.Key.font: UIFont(name: "Times New Roman", size: 18.0) as Any])
            
            let infoButton = UIButton()
            let padding = CGFloat(10)
            let buttonWidth = cell.contentView.frame.width - padding*2
            let buttonHeight = cell.contentView.frame.height - padding
            infoButton.frame = CGRect(x: padding, y: padding/2, width: buttonWidth, height: buttonHeight)
            infoButton.setAttributedTitle(titleString, for: .normal)
            cell.addSubview(infoButton)
            print(infoButton.frame)
            infoButton.backgroundColor = UIColor(red: 12/255, green: 67/255, blue: 46/255, alpha: 1)
            infoButton.layer.cornerRadius = 10
            infoButton.addTarget(self, action: #selector(segueToNext(sender:)), for: .touchUpInside)
            infoButton.addTarget(self, action: #selector(infoButtonTouchDown(sender:)), for: .touchDown)
            return cell
        }
    }
    
    @objc func segueToNext(sender: UIButton) {
        self.performSegue(withIdentifier: "segueToNavBarToOKHistory", sender: self)
        sender.backgroundColor = UIColor(red: 12/255, green: 67/255, blue: 46/255, alpha: 1)
    }
    
    @objc func infoButtonTouchDown(sender: UIButton) {
        sender.backgroundColor = UIColor(red: 12/255, green: 0/255, blue: 46/255, alpha: 1)
    }
    
    @IBAction func unwindToOKIntroTableView(segue:UIStoryboardSegue) { }
    
    /*
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.width + 100
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
