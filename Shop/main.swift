//
//  main.swift
//  Shop
//
//  Created by Шынар Торехан on 26/06/2018.
//  Copyright © 2018 Shynar Torekhan. All rights reserved.
//

import Foundation

var ourShop = Shop()
print("What is your name?")
let name = getln()
print("Do you have cash, bitcoin or card?")
var paymentMethod = stringToPaymentMethod(str: getln())!
print("How much money in tenge do you have now on payment method you chose above?")
let balance = Int(getln())!
var customer = User(name: name, balance: balance, cart: Cart())
print("Nice to meet you, \(customer.name). My name is Eliza, I'm an old friend of Siri.")
while true{
    print("Choose operation [show|cart|choose|remove|checkout|sellerBalance]:")
//    guard let transaction = stringToTransaction(str: getln()) else {print("no such transaction")}
    let transaction = stringToTransaction(str: getln())!
    transaction.selectTransaction()
}
