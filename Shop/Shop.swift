//
//  shop.swift
//  Shop
//
//  Created by Шынар Торехан on 26/06/2018.
//  Copyright © 2018 Shynar Torekhan. All rights reserved.
//

import Foundation

struct Shop{
    var balance: Int = 0
    var assortiment: [Product] = [Product(item: "Banana", price: 100, stock: 4), Product(item: "Orange", price: 50, stock: 2), Product(item: "Apple", price: 150, stock: 1)] //finite amount of goods
}
