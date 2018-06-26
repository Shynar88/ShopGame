//
//  User.swift
//  Shop
//
//  Created by Шынар Торехан on 26/06/2018.
//  Copyright © 2018 Shynar Torekhan. All rights reserved.
//

import Foundation

struct User{
    let name: String
    var balance: Int
    var cart: Cart
    
    init(name: String, balance: Int, cart: Cart){
        self.name = name
        self.balance = balance
        self.cart = cart
    }
}
