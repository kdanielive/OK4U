//
//  Event.swift
//  OK4U
//
//  Created by Daniel Kim on 10/3/19.
//  Copyright © 2019 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit

class Event {
    
    let name: String
    let date: String
    let description: String
    let primary: Bool
    let imageNav: String
    var image: UIImage?

    init(name:String, date: String, description: String, primary: Bool, imageNav:String, image:UIImage?) {
        self.name = name
        self.description = description
        self.date = date
        self.primary = primary
        self.imageNav = imageNav
        self.image = nil
    }
}
