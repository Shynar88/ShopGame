//
//  Cart.swift
//  Shop
//
//  Created by Шынар Торехан on 26/06/2018.
//  Copyright © 2018 Shynar Torekhan. All rights reserved.
//

import Foundation

struct Cart{
    var contents = [Product]()
    mutating func put(product: Product){
        contents.append(product)
    }
    mutating func remove(index: Int){
        var product = contents[index]
        contents.remove(at: index)
        product.decrementStock()
//        let index = contents.index(where: { element in
//            element.id == product.id
//        })
//
//        contents.filter { element in
//            fdsfs
//        }
    }
}
