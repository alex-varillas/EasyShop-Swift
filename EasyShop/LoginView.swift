//
//  LoginView.swift
//  EasyShop
//
//  Created by user278624 on 9/25/25.
//

import SwiftUI

struct LoginView: View {
    @State var username = ""
    @State var password = ""
    @State var isVisible = false
    
    var body: some View {
        VStack {
            HStack (spacing: 12) {
                Image(systemName: "person")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.gray)
                
                TextField("Username", text: $username)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
            }
            .padding()
            .background(.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .padding(.horizontal, 18)
            
            
            HStack (spacing: 12) {
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.gray)
                
                Group {
                    if (isVisible) {
                        TextField("Password", text: $password)
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                    } else {
                        SecureField("Password", text: $password)
                    }
                }
                
                Button(action: {
                    isVisible.toggle()
                }) {
                    Image(systemName: isVisible ? "eye" : "eye.slash")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.gray)
                }
                
            }
            .padding()
            .background(.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .padding(.horizontal, 18)
            .padding(.vertical, 6)
            
            Button(action: {}) {
                NavigationLink(destination: MainView()) {
                    Text("Sign in")
                        .padding(EdgeInsets(top: 16, leading: 120, bottom: 16, trailing: 120))
                        .font(.headline)
                        .background(Color(red: 0.13, green: 0.55, blue: 0.50))
                        .foregroundStyle(.background)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.vertical, 16)
                }

                
            }
            
            
        }
        
    }
}



#Preview {
    LoginView()
}
