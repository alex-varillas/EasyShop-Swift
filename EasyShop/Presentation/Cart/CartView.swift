//
//  CartView.swift
//  EasyShop
//
//  Created by user278624 on 10/2/25.
//

import SwiftUI

struct CartView: View {
    @StateObject var cartViewModel = CartViewModel()
    var body: some View {
        List {
            ForEach(cartViewModel.cartItems, id: \.product.name) { cartItem in
                CartItemCard(cartItem: cartItem)
            }
            .onDelete {_ in
                
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

#Preview {
    CartView()
}

struct CartItemCard: View {
    let cartItem: CartItem
    var body: some View {
        HStack {
            AsyncImage(
                url: URL(string: cartItem.product.image),
                content: { image in
                }
            )
        }
    }
}
