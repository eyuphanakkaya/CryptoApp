//
//  HomeView.swift
//  CryptoApp
//
//  Created by Eyüphan Akkaya on 4.03.2026.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showPortfolio: Bool = false
    
    var body: some View {
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            VStack {
                HStack {
                    CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                        .background(
                            CircleButtonAnimationView(animate: $showPortfolio)
                        )
                    Spacer()
                    Text(showPortfolio ? "Portfolio" : "Live Prices")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundStyle(.accent)
                    Spacer()
                    CircleButtonView(iconName: "chevron.right")
                        .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                        .onTapGesture {
                            withAnimation(.spring) {
                                showPortfolio.toggle()
                            }
                        }
                }
                .padding(.horizontal)
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
