//
//  MyProfileViewModel.swift
//  PixelPerfectUI
//
//  Created by Aman Prajapati on 7/16/18.
//  Copyright © 2018 Chirag. All rights reserved.
//

import Foundation
import UIKit

struct ModelMyProfileCell {
    var title: String = ""
    var indicationStatus: Bool = false
}

struct MyProfileViewModel {
    func getMyProfileTitleList() -> [ModelMyProfileCell] {
        return [ModelMyProfileCell(title: "Edit Your Profile", indicationStatus: true),
                ModelMyProfileCell(title: "Menbership Status", indicationStatus: false),
                ModelMyProfileCell(title: "Billing History", indicationStatus: true),
                ModelMyProfileCell(title: "Listening Time", indicationStatus: true)]
    }
    
    func getCellHeight() -> CGFloat {
        return (ScreenSize.SCREEN_HEIGHT * 44)/667
    }
}

