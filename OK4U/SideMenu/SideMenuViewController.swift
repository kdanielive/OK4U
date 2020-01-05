//
//  SideMenuViewController.swift
//  OK4U
//
//  Created by Daniel Kim on 11/16/19.
//  Copyright © 2019 Daniel Kim. All rights reserved.
//

import UIKit
import Firebase

class SideMenuViewController: UIViewController {

    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var raffleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Used for drawing raffle label
        /*
        raffleLabel.textColor = UIColor(red: 12/255, green: 67/255, blue: 46/255, alpha: 1.0)
        let num = UserDefaults.standard.integer(forKey: "raffleNum")
        raffleLabel.text = "Raffle No. \(num)"
        initRaffleNum()
        */
        // Do any additional setup after loading the view.
    }
    
    func initRaffleNum() {
        let raffleCheck = UserDefaults.standard.integer(forKey: "raffleNum")
        if(raffleCheck == 0) {
            let db = Firestore.firestore()
            db.collection("raffle").getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    var potentialRaffleNum: [Int] = []
                    for document in querySnapshot!.documents {
                        let data = document.data()
                        let num = data["num"] as! Int
                        let taken = data["taken"] as! Bool
                        if(!taken){
                            potentialRaffleNum.append(num)
                        }
                    }
                    potentialRaffleNum.shuffle()
                    if(potentialRaffleNum.count>0) {
                        let raffleNum = potentialRaffleNum[0]
                        db.collection("raffle").document("\(raffleNum)").setData([
                            "num": raffleNum,
                            "taken": true
                        ])
                        UserDefaults.standard.set(raffleNum, forKey: "raffleNum")
                    } else { }
                }
                self.redrawRaffleLabel()
            }
        }
    }
    
    func redrawRaffleLabel() {
        let num = UserDefaults.standard.integer(forKey: "raffleNum")
        print(num)
        raffleLabel.text = "Raffle No. \(num)"
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
