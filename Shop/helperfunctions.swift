//
//  helperfunctions.swift
//  Shop
//
//  Created by Шынар Торехан on 26/06/2018.
//  Copyright © 2018 Shynar Torekhan. All rights reserved.
//

import Foundation

//gets user input and returns string wothout newline character
func getln() -> String {
    let stdin = FileHandle.standardInput
    var input = NSString(data: stdin.availableData, encoding: String.Encoding.utf8.rawValue)
    input = input!.trimmingCharacters(in: NSCharacterSet.newlines) as NSString
    return input! as String
}

//converts String type to Transaction type
func stringToTransaction(str: String) -> Transaction? {
    return Transaction(rawValue: str)
}

//converts String type to PaymentMethod type
func stringToPaymentMethod(str: String) -> PaymentMethod? {
    return PaymentMethod(rawValue: str)
}

