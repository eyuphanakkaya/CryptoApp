//
//  HomeView.swift
//  CryptoApp
//
//  Created by Eyüphan Akkaya on 4.03.2026.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            VStack {
                Text("Header")
                Spacer()
            }
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
            .toolbar(.hidden)
    }
}
