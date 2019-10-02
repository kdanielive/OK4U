//
//  OKIntroTableViewCell.swift
//  OK4U
//
//  Created by Daniel Kim on 10/1/19.
//  Copyright © 2019 Daniel Kim. All rights reserved.
//

import UIKit
import Firebase

class OKIntroTableViewCell: UITableViewCell {

    @IBOutlet var photo: UIImageView!
    @IBOutlet var imageTextView: UITextView!
    @IBOutlet var aspectRatioConstraint: NSLayoutConstraint!
    @IBOutlet var textViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet var yearLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
