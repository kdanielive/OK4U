//
//  LoginViewController.swift
//  OK4U
//
//  Created by Daniel Kim on 9/5/19.
//  Copyright © 2019 Daniel Kim. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class LoginViewController: UIViewController, GIDSignInUIDelegate {

    @IBAction func signOut(_ sender: Any) {
        GIDSignIn.sharedInstance().signOut()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance()!.uiDelegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(didSignIn), name: NSNotification.Name("SuccessfulSignInNotification"), object: nil)

        //GIDSignIn.sharedInstance().signIn()

        // Do any additional setup after loading the view.
    }
    
    
    @objc func didSignIn() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "EntryView") as! UINavigationController
        self.present(nextViewController, animated:false, completion:nil)
        
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
