//
//  MoviewViewTableview.swift
//  PixelPerfectUI
//
//  Created by Aman Prajapati on 7/16/18.
//  Copyright © 2018 Chirag. All rights reserved.
//

import UIKit

class MoviewViewTableview: UIView, UITableViewDataSource, UITableViewDelegate {
    var movieList = [ModelMovieCell]()
    var tableview: UITableView?
    
    //Complition handler
    var itemClick: ((_ sectionIndex:Int,_ itemIndex:Int) -> Void)?
    var titleClick: ((_ titleIndex:Int) -> Void)?
    
    
    //MARK:- View datasource methods
    override func layoutSubviews() {
        super.layoutSubviews()
        initalizeTableview()
        registerCell()
    }
    
    private func initalizeTableview() {
        
        guard tableview == nil else {
            return
        }
        
        tableview = UITableView.init(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        tableview?.dataSource = self
        tableview?.delegate = self
        
        self.addSubview(tableview!)
    }
    
    private func registerCell() {
        tableview?.register(MovieTableviewCell.self)
    }
    
}

extension MoviewViewTableview {
    //MARK:- Uitableview datasource methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview?.dequeueReusableCell(withIdentifier: MovieTableviewCell.reuseIdentifier) as! MovieTableviewCell
        cell.tag = indexPath.row
        cell.objModel = movieList[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return (238 * ScreenSize.SCREEN_HEIGHT) / 667
    }
    
    private func cellComplition(cell:MovieTableviewCell) {
        cell.titleClick = titleClick
        cell.collectionView.itemClick = itemClick
    }
}


//Datasource structure 
struct ModelMovieCell {
    var headerTitle = ""
    var movieDetailList = [ModelMovieCollectionViewCell]()
    
}

struct ModelMovieCollectionViewCell {
    var title = ""
    var description = ""
    var imageUrl = ""
}
