//
//  EventDetailViewController.swift
//  OK4U
//
//  Created by Daniel Kim on 11/14/19.
//  Copyright © 2019 Daniel Kim. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var eventCollectionView: UICollectionView!
    
    @IBOutlet var eventTitleLabel: UILabel!
    
    @IBOutlet var eventDescriptionLabel: UILabel!
    
    @IBAction func showDescription(_ sender: Any) {
        let alert = UIAlertController(title: "Event Description", message: events[eventRowId!].description, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "옼케이~", style: .default, handler: nil))
        self.navigationController?.present(alert, animated: false, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let event = events[eventRowId!]
        if(event.collection.count==0) {
            return 1
        } else {
            return event.collection.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "event1", for: indexPath as IndexPath) as! EventDetailCollectionViewCell
        
        // Setting the horizontal Image
        let padding = CGFloat(20)
        let event = events[eventRowId!]
        event.collection = event.collection.sorted(by: { $0.1 < $1.1 })
        let row = indexPath.row
        
        var cellImage = UIImage()
        if(event.collection.count == 0) {
            cellImage = event.image!
        } else {
            cellImage = event.collection[row].0
        }
        let cellImageView = UIImageView()
        cellImageView.contentMode = .scaleAspectFit
        cellImageView.image = cellImage
        cellImageView.frame = CGRect(x: padding, y: padding/2, width: cell.frame.width-padding*2, height: cell.frame.height-padding)
        cell.contentView.addSubview(cellImageView)
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        eventCollectionView.dataSource = self
        
        eventCollectionView.layer.borderWidth = 1.0
        eventCollectionView.layer.borderColor = UIColor(red: 12/255, green: 67/255, blue: 46/255, alpha: 1.0).cgColor
        
        eventTitleLabel.text = "2019 옼식당"
        eventTitleLabel.text = events[eventRowId!].name
        eventTitleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        eventTitleLabel.textColor = UIColor(red: 12/255, green: 67/255, blue: 46/255, alpha: 1.0)
        
        eventDescriptionLabel.text = eventDescription
        eventDescriptionLabel.text = events[eventRowId!].description
        eventDescriptionLabel.textColor = UIColor(red: 12/255, green: 67/255, blue: 46/255, alpha: 1.0)
	
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
