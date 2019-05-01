//
//  PaintingTableViewCellDelegate.swift
//  ArtGallery
//
//  Created by Pat on 4/30/19.
//  Copyright © 2019 putergeek. All rights reserved.
//

import Foundation

protocol PaintingTableViewCellDelegate: class {
    
    func tappedLikeButton(on cell: PaintingTableViewCell)
}
