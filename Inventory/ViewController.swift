//
//  ViewController.swift
//  Inventory
//
//  Created by Jasmine Tan on 4/20/20.
//  Copyright © 2020 Jasmine Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var InventoryTableView: UITableView!

    var inventory : Inventory?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inventory?.products.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = InventoryTableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)
        
        if let product = inventory?.products[indexPath.row] {
            cell.textLabel?.text = product.title
            cell.detailTextLabel?.text = "Quantity : \(product.stockedQuantity)"
            
           
        }
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        InventoryTableView.delegate = self
        InventoryTableView.dataSource = self
        
        inventory = InventoryLoader.loadInventory(jsonFileName: "inventory")
        
        
    }


}
