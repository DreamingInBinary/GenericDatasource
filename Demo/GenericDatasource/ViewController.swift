//
//  ViewController.swift
//  GenericDatasource
//
//  Created by Jordan Morgan on 9/26/15.
//  Copyright © 2015 DreamingInBinary. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    private var tv = UITableView()
    private let data = ["One", "Two", "Three", "Four", "Five", "Six"]
    private var dataSource:GenericTVDatasource?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Setup generic data source
        dataSource = GenericTVDatasource(data: data, configBlock: {(cell:UITableViewCell, item:AnyObject) -> () in
            //Do any cell configuration here
            cell.textLabel?.text = item as? String
        }, cellID: "Cell")
        
        //Tableview setup
        tv.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
        tv.dataSource = dataSource
        tv.rowHeight = UITableViewAutomaticDimension
        self.view.addSubview(tv)
        
        //Tableview constraints
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.leadingAnchor.constraintEqualToAnchor(self.view.leadingAnchor).active = true
        tv.trailingAnchor.constraintEqualToAnchor(self.view.trailingAnchor).active = true
        tv.topAnchor.constraintEqualToAnchor(self.view.topAnchor).active = true
        tv.bottomAnchor.constraintEqualToAnchor(self.view.bottomAnchor).active = true
        
    }
}

