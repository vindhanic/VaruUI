//
//  MyProfileViewController.swift
//  PixelPerfectUI
//
//  Created by Chirag on 15/07/18.
//  Copyright © 2018 Chirag. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController {

    @IBOutlet weak var myProfileTableView: UITableView!
    var objViewModel = MyProfileViewModel()
    var titleList:[ModelMyProfileCell]!    
    
    //MARK:- ViewController delegate methods
    override func viewDidLoad() {
        super.viewDidLoad()
        titleList = objViewModel.getMyProfileTitleList()
        
    }
}


//MARK:- My Profile UITableView Delegate and Datasource
extension MyProfileViewController: UITableViewDelegate, UITableViewDataSource {
  
    //MARK:- Tableview datasource methods 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.kMyProfileCellID) as! MyProfileCell
        cell.objTitle = titleList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return objViewModel.getCellHeight()
    }
}
