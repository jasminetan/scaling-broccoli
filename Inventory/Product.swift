//
//  Product.swift
//  Inventory
//
//  Created by Jasmine Tan on 4/24/20.
//  Copyright © 2020 Jasmine Tan. All rights reserved.
//

import Foundation

enum Category: String, Codable {
    case Computers
    case Electronics
    case Kitchen
    case Pets
}

struct Product: Codable {
    var id : Int
    var category : Category
    var title : String
    var price : Float
    var stockedQuantity : Int
}

struct Inventory : Codable{
    var status : String
    var products : [Product]
}
