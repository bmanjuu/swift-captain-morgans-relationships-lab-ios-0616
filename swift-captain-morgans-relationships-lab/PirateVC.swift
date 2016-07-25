//
//  PirateVC.swift
//  swift-captain-morgans-relationships-lab
//
//  Created by Betty Fung on 7/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData

class PirateVC: UITableViewController {
    
    let dataStore = DataStore.sharedDataStore
    var managedPirateObjects : [Pirate] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataStore.fetchData()
        
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(true)
        
        dataStore.fetchData()
        tableView.reloadData()
        
    }
    
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
        return dataStore.pirates.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("pirateCell", forIndexPath: indexPath)
        
        let eachRecipient = dataStore.pirates[indexPath.row]
        cell.textLabel?.text = eachRecipient.name
        
        let numberOfShips = eachRecipient.pirateShips?.count
        //numberOfShips is an optional!! 
        
        if let numberOfShips = numberOfShips {
            cell.detailTextLabel?.text = String(numberOfShips)
        }
        
        // Configure the cell...
        
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destinationVC = segue.destinationViewController as? ShipVC
        let selectedPirate = dataStore.pirates[tableView.indexPathForSelectedRow!.row]
        destinationVC?.managedShipObjects = selectedPirate.pirateShips!.allObjects as! [Ship]
        destinationVC?.navigationItem.title = "\(selectedPirate.name!)'s Ships"
        //selectedPirate.name needs to be force unwrapped b/c otherwise, it would say Optional("name here") etc 
        
    }

}


