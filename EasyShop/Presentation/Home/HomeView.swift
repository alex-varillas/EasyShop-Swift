//
//  HomeView.swift
//  EasyShop
//
//  Created by user278624 on 9/11/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Miraflores").font(.headline)
                    Text("Peru").font(.subheadline)
                }
                Spacer()
                Image(systemName: "bell")
                    .frame(width: 40, height: 40)
                    .background(.background, in: Circle())
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 8, trailing: 16))
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .frame(width: 40, height: 40)
                TextField("Search", text: .constant(""))
            }
            .overlay {
                RoundedRectangle(cornerRadius: 16).stroke(Color(red: 0.15, green: 0.55, blue: 0.50), lineWidth: 1)
            }.padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            
            
            HStack {
                VStack {
                    Text("Special offers for you")
                        .foregroundStyle(.background)
                        .font(.headline)
                    
                    Button("Show now") {
                    
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal, 10)
                    .font(.headline)
                    .foregroundStyle(Color(red: 0.15, green: 0.55, blue: 0.50))
                    .background(.yellow, in: RoundedRectangle(cornerRadius: 16))
                }
                
                Image("dog")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 190)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 192)
            .background(Color(red: 0.15, green: 0.55, blue: 0.50), in: RoundedRectangle(cornerRadius: 32))
            .padding(EdgeInsets(top: 2, leading: 16, bottom: 2, trailing: 16))
            
            HStack {
                Text("Products")
                    .font(.headline)
                
                Spacer()
                
                Button(action: {}) {
                    Text("See all")
                        .foregroundStyle(.black)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
            
        }
        .background(.gray.opacity(0.12))
    }
}


#Preview {
    HomeView()
}
