//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Pat on 4/30/19.
//  Copyright © 2019 putergeek. All rights reserved.
//

import Foundation
import UIKit
class Model {
    
    
    var paintings: [Painting] = []

    
    func loadPaintingsFromAssets() {
        for number in 1...12 {
            let painting = Painting(image: UIImage(named: "Image\(number)")!)
            paintings.append(painting)
        }
    }

}





