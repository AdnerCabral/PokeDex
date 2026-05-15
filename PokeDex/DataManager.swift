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
    
    func fetchPokemon(id: Int) async {
        let urlStr: String = "https://pokeapi.co/api/v2/pokemon/\(String(id).lowercased())"
        let url: URL? = URL(string: urlStr)
        guard let urlUnwrapped = url else {
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: urlUnwrapped)
            if let decodedResponse = try? JSONDecoder().decode(PokemonInfo.self, from: data) {
                        self.pokemon.append(decodedResponse)
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
        let urlStr: String = "https://pokeapi.co/api/v2/pokemon/\(query.lowercased())"
        let url: URL? = URL(string: urlStr)
        guard let urlUnwrapped = url else {
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: urlUnwrapped)
            let details = try JSONDecoder().decode(PokemonInfo.self, from: data)
            //FIX IMMIDIATELY
//            searchResults.id.append(details.id)
        } catch let error {
            print(error)
        }
    }
}

