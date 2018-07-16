//
//  MoviewCollectionView.swift
//  PixelPerfectUI
//
//  Created by Aman Prajapati on 7/16/18.
//  Copyright © 2018 Chirag. All rights reserved.
//

import UIKit

class MoviewCollectionView: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    private var collectionView:UICollectionView?
    var movieList = [ModelMovieCollectionViewCell]()
    
    var itemClick: ((_ sectionIndex:Int,_ itemIndex:Int) -> Void)?
    
    //MARK:- View Delegate methods
    override func layoutSubviews() {
        super.layoutSubviews()
        intializeCollectionView()
        registerCell()
    }
    
    //Method to set collectionview layout params
    private func intializeCollectionView()  {
        
        guard collectionView == nil else {
            return
        }
        
        // Create layout with horizontal scrolling
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 10
        
        let collectionViewFrame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        
        // initilize collectionview using layout and frame
        collectionView = UICollectionView.init(frame: collectionViewFrame, collectionViewLayout: layout)
        
        collectionView?.dataSource = self //set datasource
        collectionView?.delegate = self //set delegate
        
        collectionView?.backgroundColor = UIColor.clear
        self.addSubview(collectionView!)
    }
    
    private func registerCell() {
        collectionView?.register(MoviewCollectionViewCell.self)
    }
}


extension MoviewCollectionView {
    
    //MARK:- UICollection datasource methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MoviewCollectionViewCell.reuseIdentifier, for: indexPath) as! MoviewCollectionViewCell
        cell.objMoview = movieList[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 210)
    }
    
    //MARK:- CollectionView Delegate methods
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let complition = itemClick {
            complition(indexPath.row, tag)
        }
    }
}
