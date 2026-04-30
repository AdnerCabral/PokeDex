//
//  DataManager.swift
//  PokeDex
//
//  Created by Student on 4/29/26.
//

import SwiftUI
import Combine

// Changed from struct to class so it can hold and update data
class DataManager: ObservableObject {
    @Published var pokemon: PokemonInfo?
    
    func fetchPokemon(id: String) {
        // 1. Setup the URL
        guard let url = URL(string: "https://pokeapi.co\(id.lowercased())") else {
            print("Invalid URL")
            return
        }
        
        // 2. Start the network request
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                // 3. Decode the JSON into your PokemonInfo struct
                let decoder = JSONDecoder()
                if let decodedResponse = try? decoder.decode(PokemonInfo.self, from: data) {
                    // 4. Update the UI on the main thread
                    DispatchQueue.main.async {
                        self.pokemon = decodedResponse
                    }
                }
            }
        }.resume()
    }
}

