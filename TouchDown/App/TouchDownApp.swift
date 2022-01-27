//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by david on 20/12/2021.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
