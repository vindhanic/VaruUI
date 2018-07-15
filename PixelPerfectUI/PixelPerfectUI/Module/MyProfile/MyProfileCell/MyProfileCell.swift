//
//  MyProfileCell.swift
//  PixelPerfectUI
//
//  Created by Chirag on 15/07/18.
//  Copyright © 2018 Chirag. All rights reserved.
//

import UIKit

class MyProfileCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var indicationLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.font = UIFont.init(name: titleLabel.font.fontName, size: FontSize.FontSize17)
        indicationLabel.font = UIFont.init(name: titleLabel.font.fontName, size: FontSize.FontSize17)
        // Initialization code
    }
}
