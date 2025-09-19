//
//  ProductDetail.swift
//  EasyShop
//
//  Created by user278624 on 9/18/25.
//

import SwiftUI

struct ProductDetail: View {
    let product: Product
    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                AsyncImage(
                    url: URL(string: product.image),
                    content: {image in
                        image.resizable()
                            .scaledToFill()
                            .frame(width: .infinity)
                            .frame(height: 400)
                            .clipped()
                        
                    },
                    placeholder: {
                        ProgressView()
                            .frame(width: .infinity)
                            .frame(height: 300)
                    })
                Text(product.name).font(.title2)
                    .padding(.horizontal, 20).bold()
                    .padding(.top)
                Text("$ \(String(product.price))").font(.title3)
                    .padding(.horizontal, 20)
                
                HStack {
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "minus")
                            .font(.title2)
                            .frame(width: 24, height: 24)
                            .tint(.primary)
                            .padding()
                            .background(.gray.opacity(0.1), in: RoundedRectangle(cornerRadius: 16))
                            .clipped()
                        
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "plus")
                            .font(.title2)
                            .frame(width: 24, height: 24)
                            .tint(.primary)
                            .padding()
                            .background(.gray.opacity(0.1), in: RoundedRectangle(cornerRadius: 16))
                            .clipped()
                        
                    }
                }
                .padding(.trailing)
            }
        }
        
        Button("Add to cart") {
            
        }
        .padding()
        .background(.green)
        .foregroundStyle(.white)
    }
}



#Preview {
    ProductDetail(product: products[0])
}
