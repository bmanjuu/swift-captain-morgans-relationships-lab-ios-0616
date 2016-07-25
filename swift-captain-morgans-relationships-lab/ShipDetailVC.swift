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
    
    @IBOutlet weak var propulsionTypeLabel: UILabel!
    @IBOutlet weak var shipNameLabel: UILabel!
    @IBOutlet weak var pirateNameLabel: UILabel!
    @IBOutlet weak var propulsionType: UILabel!
    @IBOutlet weak var pirateName: UILabel!
    @IBOutlet weak var shipName: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let selectedShip = selectedShip {
            
            shipName.text = selectedShip.name
            pirateName.text = selectedShip.pirateOwner?.name
            propulsionType.text = selectedShip.engine
            
        }
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(true)
        
    }

}
