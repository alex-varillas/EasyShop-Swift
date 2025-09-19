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
                RoundedRectangle(cornerRadius: 16).stroke(.green, lineWidth: 1)
            }.padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            
            
            HStack {
                Image("gato2")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 188)
                        
            
                Spacer()
                VStack {
                    Button(action: {}) {
                        Text("Shop now")
                            .padding()
                            .foregroundStyle(.black)
                            .background(.yellow, in: RoundedRectangle(cornerRadius: 16))
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 192)
            .background(.green, in: RoundedRectangle(cornerRadius: 32))
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 8, trailing: 16))
            
            Spacer()
            
            
        }
        .background(.gray.opacity(0.12))
        .tint(.green)
    }
}


#Preview {
    HomeView()
}
