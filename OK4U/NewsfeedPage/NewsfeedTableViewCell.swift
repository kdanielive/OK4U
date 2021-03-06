//
//  NewsfeedTableViewCell.swift
//  OK4U
//
//  Created by Daniel Kim on 11/13/19.
//  Copyright © 2019 Daniel Kim. All rights reserved.
//

import UIKit

class NewsfeedTableViewCell: UITableViewCell {
    
    @IBOutlet var backgroundImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        
        for subview in self.subviews {
            subview.isHidden = true
        }
    }
}
