//
//  Painting.swift
//  ArtGallery
//
//  Created by Pat on 4/30/19.
//  Copyright © 2019 putergeek. All rights reserved.
//

import Foundation
import UIKit

struct Painting {
    
    let image: UIImage
    var isLiked: Bool
    
    init(image: UIImage, isLiked: Bool = false) {
        
        self.image = image
        self.isLiked = isLiked
    }
}
