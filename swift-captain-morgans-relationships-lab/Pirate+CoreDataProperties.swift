//
//  Pirate+CoreDataProperties.swift
//  swift-captain-morgans-relationships-lab
//
//  Created by Betty Fung on 7/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Pirate {

    @NSManaged var name: String?
    @NSManaged var ships: String?
    @NSManaged var pirateShips: NSSet?

}