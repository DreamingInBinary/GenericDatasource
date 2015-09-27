//
//  GenericDatasource.swift
//  GenericDatasource
//
//  Created by Jordan Morgan on 9/26/15.
//  Copyright © 2015 DreamingInBinary. All rights reserved.
//

import Foundation
import UIKit

public class GenericTVDatasource: NSObject, UITableViewDataSource
{
    //MARK: Properties
    private let configurationBlock:(cell:UITableViewCell, item:AnyObject) -> ()
    private let CELL_ID:String
    private var data:[AnyObject] = [AnyObject]()
    
    //MARK: Initializers
    required public init(data:[AnyObject], configBlock:(cell:UITableViewCell, item:AnyObject) -> (), cellID:String)
    {
        self.data = data
        self.configurationBlock = configBlock
        self.CELL_ID = cellID
    }
    
    //MARK: Delegate Methods
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let tvCell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier(CELL_ID, forIndexPath: indexPath)
        
        if (self.data.isEmpty)
        {
            tvCell.textLabel?.text = "No data to display"
            tvCell.backgroundColor = UIColor.clearColor()
        }
        else
        {
            let dataItem:AnyObject = self.data[indexPath.row]
            self.configurationBlock(cell: tvCell, item: dataItem)
        }
        
        return tvCell
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.data.count
    }
    
    public func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
}
