//
//  CartViewModel.swift
//  EasyShop
//
//  Created by user278624 on 10/2/25.
//

import Foundation

class CartViewModel: ObservableObject {
    @Published private(set) var cartItems: [CartItem] = []
    
    func addCartItem(product: Product, quantity: Int) {
        cartItems.append(CartItem(product: product, quantity: quantity))
    }
}
