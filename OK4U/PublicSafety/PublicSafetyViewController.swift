//
//  PublicSafetyViewController.swift
//  OK4U
//
//  Created by Daniel Kim on 1/20/20.
//  Copyright © 2020 Daniel Kim. All rights reserved.
//

import UIKit
import Contacts

class PublicSafetyViewController: UIViewController {

    @IBOutlet var callImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        callImage.isUserInteractionEnabled = true
        callImage.addGestureRecognizer(tapGestureRecognizer)

        // Do any additional setup after loading the view.
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        dialNumber(number: "01039510870")
    }
    
    @IBAction func pressedAddContact(_ sender: UIButton) {
        
    }
    
    func dialNumber(number : String) {
        if let url = URL(string: "tel://\(number)"), UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url, options: [:], completionHandler:nil)
            } else {
                UIApplication.shared.openURL(url)
            }
        } else {
            // add error message here
        }
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
