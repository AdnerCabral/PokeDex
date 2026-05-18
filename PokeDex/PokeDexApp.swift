//
//  PokeDexApp.swift
//  PokeDex
//
//  Created by Student on 4/27/26.
//

import SwiftUI

@main
struct PokeDexApp: App {
    @State private var dataManager = DataManager()
    var body: some Scene {
        WindowGroup {
            Home()
                .environment(dataManager)
        }
    }
}
