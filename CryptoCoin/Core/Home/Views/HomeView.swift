//
//  HomeView.swift
//  CryptoCoin
//
//  Created by Amby on 19/10/2022.
//

import SwiftUI

struct HomeView: View {
    @State private var showPortfolio: Bool = false

    var body: some View {
        ZStack {
            //background layer
            Color.theme.background
                .ignoresSafeArea()

            // content layer
            VStack {
                HStack {
                    CircleButtonView(iconName: showPortfolio ? "plus" : "info" )
                        .animation(.none)
                        .background(
                            CircleButtonAnimationView(animate: $showPortfolio)
                        )
                    Spacer()
                    Text( showPortfolio ? "Portfolio" : "Live Prices")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.theme.accent)
                        .animation(.none)
                    Spacer()
                    CircleButtonView( iconName: "chevron.right")
                        .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                        .onTapGesture {
                            withAnimation(.spring()) {
                                showPortfolio.toggle()
                            }
                        }
                }
                .padding(.horizontal)

                Spacer(minLength: 100)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
    }
}