//
//  ProductDetailViewModel.swift
//  EasyShop
//
//  Created by user278624 on 9/18/25.
//

import Foundation

class ProductDetailViewModel: ObservableObject {
    @Published private(set) var quantity = 1
    
    func increaseQuantity() {
        quantity += 1
    }

    
    
}
