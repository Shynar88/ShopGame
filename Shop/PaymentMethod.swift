//
//  PaymentMethod.swift
//  Shop
//
//  Created by Шынар Торехан on 26/06/2018.
//  Copyright © 2018 Shynar Torekhan. All rights reserved.
//

import Foundation

enum PaymentMethod: String{ //different payment methods
    case cash, card, bitcoin
    func pay(){
        switch self{
            case .cash:
                print("Payment in tenge by cash was accepted")
            case .card:
                print("Payment in tenge by card was accepted")
            case .bitcoin:
                print("Payment in tenge by bitcoin was accepted")
        }
    }
}
