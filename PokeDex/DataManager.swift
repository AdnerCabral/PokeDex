//
//  DataManager.swift
//  PokeDex
//
//  Created by Student on 4/29/26.
//

import SwiftUI
import Combine

// Changed from struct to class so it can hold and update data
@Observable
class DataManager: ObservableObject {
    @Published var pokemon: PokemonInfo?
    
    func fetchPokemon(id: String) async {
        let urlStr: String = "https://pokeapi.co\(id.lowercased())"
        // 1. Setup the URL
        let url: URL? = URL(string: urlStr)
        guard let urlUnwrapped = url else {
            return
        }
        do {
            // 2. Start the network request
            let (data, _) = try await URLSession.shared.data(from: urlUnwrapped)
            // 3. Decode the JSON into your PokemonInfo struct
            let decodedResponse = try JSONDecoder().decode(PokemonInfo.self, from: data) {
            //(data type needed ^^^) 4. Update the UI on the main thread
            }
        } catch let error {
            print(error)
        }
    }
}

