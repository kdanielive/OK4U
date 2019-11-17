//
//  SideMenuViewController.swift
//  OK4U
//
//  Created by Daniel Kim on 11/16/19.
//  Copyright © 2019 Daniel Kim. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {

    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var raffleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        raffleLabel.textColor = UIColor(red: 12/255, green: 67/255, blue: 46/255, alpha: 1.0)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
