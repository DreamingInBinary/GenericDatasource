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

    @IBOutlet weak var tv: UITableView!

    private let data = ["One", "Two", "Three", "Four", "Five", "Six"]
    private var dataSource:GenericTVDatasource?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Setup generic data source
        dataSource = GenericTVDatasource(data: data, cellID: "Cell") { cell, item in
            //Do any cell configuration here
            cell.textLabel?.text = item as? String
        }
        
        //Tableview setup
        tv.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tv.dataSource = dataSource
        tv.rowHeight = UITableViewAutomaticDimension

        //Tableview constraints
        tv.translatesAutoresizingMaskIntoConstraints = false
    }
}

