//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Pat on 4/30/19.
//  Copyright © 2019 putergeek. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var paintingImage: UIImageView!
    
    @IBOutlet weak var likedButton: UIButton!
    
    var delegate : PaintingTableViewCellDelegate?
    
    @IBAction func likeButtonTapped(_ sender: UIButton){
        delegate?.tappedLikeButton(on: self)
    }
}
