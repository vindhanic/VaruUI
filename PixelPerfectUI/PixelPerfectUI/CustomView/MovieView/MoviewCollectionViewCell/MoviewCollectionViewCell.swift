//
//  MoviewCollectionViewCell.swift
//  PixelPerfectUI
//
//  Created by Aman Prajapati on 7/16/18.
//  Copyright © 2018 Chirag. All rights reserved.
//

import UIKit

class MoviewCollectionViewCell: UICollectionViewCell, ReusableView, NibLoadableView {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    var objMoview: ModelMovieCollectionViewCell! {
        didSet {
            lblTitle.text = objMoview.title
            lblDescription.text = objMoview.description
            imgView.image = UIImage(named: objMoview.imageUrl)
        }
    }
}
