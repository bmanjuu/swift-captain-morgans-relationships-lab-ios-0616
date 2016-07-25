//
//  ShipVC.swift
//  swift-captain-morgans-relationships-lab
//
//  Created by Betty Fung on 7/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData

class ShipVC: UITableViewController {
    
    let dataStore = DataStore.sharedDataStore
    var managedShipObjects : [Ship] = []
    // var selectedPirate : Pirate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataStore.fetchData()
        
    }
    
//    override func viewWillAppear(animated: Bool) {
//        
//        super.viewWillAppear(true)
//        
//        dataStore.fetchData()
//        tableView.reloadData()
//        
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return managedShipObjects.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("shipCell", forIndexPath: indexPath)
        
        let eachShip = managedShipObjects[indexPath.row] 
        cell.textLabel?.text = eachShip.name
        cell.detailTextLabel?.text = ""
        
        return cell
}
    
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            // Get the new view controller using segue.destinationViewController.
            // Pass the selected object to the new view controller.
            let destinationVC = segue.destinationViewController as? ShipDetailVC
            let currentShip = managedShipObjects[tableView.indexPathForSelectedRow!.row]
            destinationVC?.selectedShip = currentShip
            destinationVC?.navigationItem.title = "\(currentShip.name!) Information"
        }
}
