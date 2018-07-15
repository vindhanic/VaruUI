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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
//MARK:- My Profile UITableView Delegate and Datasource
extension MyProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.kMyProfileCellID) as! MyProfileCell
        
        switch indexPath.row {
        case 0:
            cell.indicationLabel.isHidden = true
            cell.titleLabel.text = "Edit Your Profile"
        case 1:
            cell.indicationLabel.isHidden = false
            cell.titleLabel.text = "Menbership Status"
        case 2:
            cell.indicationLabel.isHidden = true
            cell.titleLabel.text = "Billing History"
        default:
            cell.indicationLabel.isHidden = true
            cell.titleLabel.text = "Listening Time"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
}
