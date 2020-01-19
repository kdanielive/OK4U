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
    @IBOutlet var addContactButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        callImage.isUserInteractionEnabled = true
        callImage.addGestureRecognizer(tapGestureRecognizer)

        addContactButton.layer.borderWidth = 1
        addContactButton.layer.borderColor = UIColor.systemGray.cgColor
        // Do any additional setup after loading the view.
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        dialNumber(number: "+12128545555")
        
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        tappedImage.alpha = 0.5
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(buttonAlpha), userInfo: nil, repeats: false)
    }
    
    @objc func buttonAlpha() {
        callImage.alpha = 1
    }
    
    @IBAction func pressedAddContact(_ sender: UIButton) {
        var emergencyExists = false
        
        let contacts = self.getContactFromCNContact()
        for contact in contacts {
            if(contact.givenName=="Emergency") {
                emergencyExists = true
            }
        }
        
        if(!emergencyExists) {
            let store = CNContactStore()
            let contact = CNMutableContact()
            contact.familyName = ""
            contact.givenName = "Emergency"
            contact.phoneNumbers = [CNLabeledValue(label: CNLabelHome, value: CNPhoneNumber(stringValue: "+12128545555"))]
            /*// Address
            let address = CNMutablePostalAddress()
            address.street = "Your Street"
            address.city = "Your City"
            address.state = "Your State"
            address.postalCode = "Your ZIP/Postal Code"
            address.country = "Your Country"
            let home = CNLabeledValue<CNPostalAddress>(label:CNLabelHome, value:address)
            contact.postalAddresses = [home]
            */
            // Save
            let saveRequest = CNSaveRequest()
            saveRequest.add(contact, toContainerWithIdentifier: nil)
            try? store.execute(saveRequest)
        } else {
            let alert = UIAlertController(title: "Already Added Public Safety Emergency Contact", message: "", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "옼케이~", style: .default, handler: nil))
            self.navigationController?.present(alert, animated: false, completion: nil)
        }
    }
    
    func getContactFromCNContact() -> [CNContact] {

        let contactStore = CNContactStore()
        let keysToFetch = [
            CNContactFormatter.descriptorForRequiredKeys(for: .fullName),
            CNContactGivenNameKey,
            CNContactMiddleNameKey,
            CNContactFamilyNameKey,
            CNContactEmailAddressesKey,
            ] as [Any]

        //Get all the containers
        var allContainers: [CNContainer] = []
        do {
            allContainers = try contactStore.containers(matching: nil)
        } catch {
            print("Error fetching containers")
        }

        var results: [CNContact] = []

        // Iterate all containers and append their contacts to our results array
        for container in allContainers {

            let fetchPredicate = CNContact.predicateForContactsInContainer(withIdentifier: container.identifier)

            do {
                let containerResults = try contactStore.unifiedContacts(matching: fetchPredicate, keysToFetch: keysToFetch as! [CNKeyDescriptor])
                results.append(contentsOf: containerResults)

            } catch {
                print("Error fetching results for container")
            }
        }

        return results
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
