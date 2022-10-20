//
//  CryptoCoinApp.swift
//  CryptoCoin
//
//  Created by Amby on 19/10/2022.
//

import SwiftUI

@main
struct CryptoCoinApp: App {
    @StateObject private var vm = HomeViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
