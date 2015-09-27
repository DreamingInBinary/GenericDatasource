![GenericDatasrouce](/pablo.png?raw=true "GenericDatasource")

# GenericDatasource
A Swift implementation of a generic datasource that you can use for table views.

###What is it for?
This simple class has only one job, to move your datasource logic outside of your controller. That's it :-). There are no tricks or anything special about it, other than it helps promote skinny view controllers.

###How do I use it?
Simply set up your GenericDatasource class with the information it needs in its initializer.

    genericDataSource = GenericTVDatasource(data: data, configBlock: {(cell:UITableViewCell, item:AnyObject) -> () in
       //Do any cell configuration here
       cell.textLabel?.text = item as? String
    }, cellID: "Cell")

Whenever your table view is initialized, just set its datasource to your `GenericDatasouce` instance:

    aTableview.dataSource = genericDataSource

And profit!

###What's coming?
  - Support for collection views.
  - Ability to specify sections.

###Can I tweet at you?
Please do, [@jordanmorgan10](https://twitter.com/jordanmorgan10). As the mantra goes - pull requests welcome.
