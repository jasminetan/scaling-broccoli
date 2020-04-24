//
//  Loader.swift
//  Inventory
//
//  Created by Jasmine Tan on 4/24/20.
//  Copyright © 2020 Jasmine Tan. All rights reserved.
//

import Foundation
class InventoryLoader{
    
    class func loadInventory(jsonFileName : String)-> Inventory?{
        var inventory : Inventory?
        let jsonDecoder = JSONDecoder()
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            inventory = try? jsonDecoder.decode(Inventory.self, from: jsonData)
        }
    
        return inventory
    
    }
    
}
