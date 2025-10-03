//
//  IntroView.swift
//  EasyShop
//
//  Created by user278624 on 9/11/25.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image("background")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400)
                
                Button(action: {}) {
                    Text("Sign up")
                        .padding()
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.13, green: 0.55, blue: 0.50))
                        .foregroundStyle(.background)
                        .clipShape(RoundedRectangle(cornerRadius: 22))
                }
                
                Button(action: {}) {
                    Text("Sign in")
                        .padding()
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(Color(red: 0.13, green: 0.55, blue: 0.50))
                        .overlay(RoundedRectangle(cornerRadius: 22)
                            .stroke(Color(red: 0.13, green: 0.55, blue: 0.50), lineWidth: 2)
                        )
                        .padding(.top, 12)
                }
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.gray.opacity(0.12))
            
            
        }
    }
}

#Preview {
    IntroView()
}
