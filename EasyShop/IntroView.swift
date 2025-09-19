//
//  IntroView.swift
//  EasyShop
//
//  Created by user278624 on 9/11/25.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        VStack {
            Image("background")
                .resizable()
                .scaledToFit()
                .frame(height: 400)
        }
        .padding()
        .background(.gray.opacity(0.12))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    IntroView()
}
