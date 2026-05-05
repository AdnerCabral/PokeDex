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
    private(set) var lastQuery = ""

    
    private var pokemon: [PokemonInfo] = []
    private(set) var searchResults: [PokemonInfo] = []
    
    func fetchPokemon(id: String) async {
        let urlStr: String = "https://pokeapi.co\(id.lowercased())"
        let url: URL? = URL(string: urlStr)
        guard let urlUnwrapped = url else {
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: urlUnwrapped)
            if let decodedResponse = try? JSONDecoder().decode(PokeResponse.self, from: data) {
                DispatchQueue.main.async {
                    for mon in decodedResponse.results {
                        self.pokemon.append(mon)
                    }
                }
            }
        } catch let error {
            print(error)
        }
    }
    
    func searchPokemon(query: String) async {
        if (query != lastQuery) {
            lastQuery = query
            searchResults = []
        }
        let urlStr: String = "https://pokeapi.co\(query.lowercased())"
        let url: URL? = URL(string: urlStr)
        guard let urlUnwrapped = url else {
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: urlUnwrapped)
            let details: PokeResponse = try JSONDecoder().decode(PokeResponse.self, from: data)
            searchResults.append(contentsOf: details.results)
        } catch let error {
            print(error)
        }
    }
}

