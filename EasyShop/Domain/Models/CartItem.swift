//
//  CartItem.swift
//  EasyShop
//
//  Created by user278624 on 10/2/25.
//

struct CartItem {
    let product: Product
    let quantity: Int
}

let CartItems: [CartItem] = [
    CartItem(product: products[0], quantity: 5),
    CartItem(product: products[1], quantity: 2),
    CartItem(product: products[2], quantity: 4)
]
