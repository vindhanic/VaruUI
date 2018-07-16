
//
//  MovieViewModel.swift
//  PixelPerfectUI
//
//  Created by Aman Prajapati on 7/16/18.
//  Copyright © 2018 Chirag. All rights reserved.
//

import Foundation

struct HomeViewModel {
    func getMovieList() -> [ModelMovieCell] {
        
        var mainMoviewList = [ModelMovieCell]() //Moview list

        //create first object
        var firstObject = ModelMovieCell()
        firstObject.headerTitle = "ContinueListening"
        firstObject.movieDetailList = [ModelMovieCollectionViewCell]()
        
        var firstCollectionViewCell = ModelMovieCollectionViewCell()
        firstCollectionViewCell.title = "Christian Barton"
        firstCollectionViewCell.description = "Havana Nocture: How the mob owned cuba..."
        firstCollectionViewCell.imageUrl = "imgOne"
        
        var secondCollectionViewCell = ModelMovieCollectionViewCell()
        secondCollectionViewCell.title = "Gregory Stricland"
        secondCollectionViewCell.description = "The Corporation: An Epic Story of the cuban..."
        secondCollectionViewCell.imageUrl = "imgTwo"
        
        var thirdCollectionViewCell = ModelMovieCollectionViewCell()
        thirdCollectionViewCell.title = "Christian Barton"
        thirdCollectionViewCell.description = "Havana Nocture: How the mob owned cuba..."
        thirdCollectionViewCell.imageUrl = "imgThree"
        
        firstObject.movieDetailList.append(firstCollectionViewCell)
        firstObject.movieDetailList.append(secondCollectionViewCell)
        firstObject.movieDetailList.append(thirdCollectionViewCell)
        
        var secondObject = ModelMovieCell()
        secondObject.headerTitle = "Populer on Maktabi"
        secondObject.movieDetailList = [ModelMovieCollectionViewCell]()
        
        secondObject.movieDetailList.append(firstCollectionViewCell)
        secondObject.movieDetailList.append(secondCollectionViewCell)
        secondObject.movieDetailList.append(thirdCollectionViewCell)
        
        mainMoviewList.append(firstObject)
        mainMoviewList.append(secondObject)
        
        return mainMoviewList
    }
}
