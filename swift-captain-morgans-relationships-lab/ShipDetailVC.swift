//
//  ShipDetailVC.swift
//  swift-captain-morgans-relationships-lab
//
//  Created by Betty Fung on 7/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ShipDetailVC: UIViewController {
    
    var selectedShip : Ship?
    let dataStore = DataStore.sharedDataStore
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataStore.fetchData()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(true)
        
        dataStore.fetchData()
        
    }

}
