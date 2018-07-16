//
//  AuthorViewController.swift
//  PixelPerfectUI
//
//  Created by Chirag on 15/07/18.
//  Copyright © 2018 Chirag. All rights reserved.
//

import UIKit

class AuthorViewController: UIViewController {
    
    @IBOutlet weak var authorTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        // Do any additional setup after loading the view.
    }
    
    //MARK:- Helper Methods
    func registerCells() {
        authorTableView.rowHeight = UITableViewAutomaticDimension
        authorTableView.estimatedRowHeight = 100
        authorTableView.register(UINib(nibName: XIBName.kAuthorOverviewXIB, bundle: Bundle.main), forCellReuseIdentifier: CellIdentifiers.kAuthorOverviewCellID)
        authorTableView.register(UINib(nibName: XIBName.kMoreByAuthorXIB, bundle: Bundle.main), forCellReuseIdentifier: CellIdentifiers.kMoreByAuthorCellID)
    }
    
}
//MARK:- Author View Controller Tableview Delegate and Datasource
extension AuthorViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell:AuthorOverviewCell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.kAuthorOverviewCellID, for: indexPath) as! AuthorOverviewCell
            return cell
        } else {
            let cell:MoreByAuthorCell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.kMoreByAuthorCellID, for: indexPath) as! MoreByAuthorCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}
