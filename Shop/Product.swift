//
//  Product.swift
//  Shop
//
//  Created by Шынар Торехан on 26/06/2018.
//  Copyright © 2018 Shynar Torekhan. All rights reserved.
//

import Foundation

struct Product{
    let item: String
    let price: Int
    var stock: Int
    
    init(item: String, price: Int, stock: Int){
        self.item = item
        self.price = price
        self.stock = stock
    }
    
    mutating func decrementStock(){
        stock -= 1
    }
}
