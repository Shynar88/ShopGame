//
//  transactions enum.swift
//  Shop
//
//  Created by Шынар Торехан on 26/06/2018.
//  Copyright © 2018 Shynar Torekhan. All rights reserved.
//

import Foundation

enum Transaction: String {
    case show, cart, choose, remove, checkout, sellerBalance
    func selectTransaction(){
        switch self {
            case .show:
                for (index, product) in ourShop.assortiment.enumerated() {
                    if product.stock > 0 { //you can't buy goods that are unavailable: if product ended, it will not be displayed
                        print("\(index): \(product.item), \(product.price) ₸")
                    }
                }
                return
            case .cart:
                for (index, product) in customer.cart.contents.enumerated() {
                    print("\(index): \(product.item), \(product.price) ₸")
                }
                return
            case .choose:
                print("Choose product by id:")
                let id = Int(getln())!
                customer.cart.put(product: ourShop.assortiment[id])
                ourShop.assortiment[id].decrementStock() //amount of goods reduces
                return
            case .remove:
                print("Choose product by id:")
                let id = Int(getln())!
                customer.cart.remove(index: id)
                return
            case .checkout:
                var total = 0
                for product in customer.cart.contents{
                    total += product.price
                }
                if total < customer.balance {
                    ourShop.balance += total   //seller has balance too
                    //print(ourShop.balance) //for testing whether seller's balance works
                    print("Successful purchase")
                    paymentMethod.pay()
                } else {
                    print("Not enough money") //you can't buy goods when you don't have enough money
                }
                return
            case .sellerBalance:
                print(ourShop.balance)
                return
        }
    }
}
