//
//  MovieTableviewCellTableViewCell.swift
//  PixelPerfectUI
//
//  Created by Aman Prajapati on 7/16/18.
//  Copyright © 2018 Chirag. All rights reserved.
//

import UIKit

class MovieTableviewCell: UITableViewCell, ReusableView, NibLoadableView {

    @IBOutlet weak var btnDetail: UIButton!
    @IBOutlet weak var collectionView: MoviewCollectionView!
    
    var titleClick: ((_ titleIndex:Int) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    var objModel: ModelMovieCell! {
        didSet {
            btnDetail.setTitle(objModel.headerTitle, for: .normal)
            collectionView.movieList = objModel.movieDetailList
            collectionView.tag = tag
        }
    }
    
    @IBAction func btnDetailClick(_ sender: UIButton) {
        if let complition = titleClick {
            complition(sender.tag)
        }
    }
    
}
