//
//  Constants.swift
//  PixelPerfectUI
//
//  Created by Chirag on 15/07/18.
//  Copyright © 2018 Chirag. All rights reserved.
//

import UIKit
//MARK:-
struct ScreenSize {
    static let SCREEN_WIDTH: CGFloat = UIScreen.main.bounds.size.width
    static let SCREEN_HEIGHT: CGFloat = UIScreen.main.bounds.size.height
    static let SCREEN_MAX_LENGTH = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    static let SCREEM_MIN_LENGTH = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
}
//MARK:- Font Sizes
struct FontSize {
    static let FontSize18: CGFloat = 18 / 375 * ScreenSize.SCREEN_WIDTH
    static let FontSize17: CGFloat = 17 / 375 * ScreenSize.SCREEN_WIDTH
}
//MARK:- CellIdentifiers
struct CellIdentifiers {
    static let kMyProfileCellID = "myProfileCellID"
    static let kAuthorOverviewCellID = "authorOverviewCellID"
    static let kMoreByAuthorCellID = "moreByAuthorCellID"
}

struct XIBName {
    static let kAuthorOverviewXIB = "AuthorOverviewCell"
    static let kMoreByAuthorXIB = "MoreByAuthorCell"
}

