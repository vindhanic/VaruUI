//
//  HomeViewController.swift
//  PixelPerfectUI
//
//  Created by Aman Prajapati on 7/16/18.
//  Copyright © 2018 Chirag. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var objViewModel = HomeViewModel()
    
    @IBOutlet weak var movieTableView: MoviewViewTableview!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.movieList = objViewModel.getMovieList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    private func complitionMethods() {
        movieTableView.itemClick = { (sectionIndex, itemIndex) in
            
        }

        movieTableView.titleClick = { (titleIndex) in
            
        }

    }
}
