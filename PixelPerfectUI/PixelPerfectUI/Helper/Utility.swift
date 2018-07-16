//
//  Utility.swift
//  PixelPerfectUI
//
//  Created by Chirag on 15/07/18.
//  Copyright © 2018 Chirag. All rights reserved.
//

import UIKit

func setNavigationTitleColor() {
    UINavigationBar.appearance().tintColor = .white
    UINavigationBar.appearance().titleTextAttributes =  [NSAttributedStringKey.font: UIFont(name: "HelveticaNeue-Light", size: FontSize.FontSize18)!,NSAttributedStringKey.foregroundColor : UIColor.white]

}
