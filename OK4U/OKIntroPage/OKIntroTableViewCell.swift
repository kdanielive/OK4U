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
    @IBOutlet var imageLabel: UILabel!
    @IBOutlet var aspectRatioConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
