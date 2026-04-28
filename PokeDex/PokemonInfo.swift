//
//  PokemonInfo.swift
//  PokeDex
//
//  Created by Student on 4/28/26.
//

import SwiftUI

struct PokemonInfo: Identifiable{
    var id: Int
    var name: String
    var height: Int
    var weight: Int
    var sprite: [MTLType]
    var forms: [MTLType]
    var abilities: [MTLType]
    var stats: [MTLType]
    var types: [MTLType]
    var moves: [MTLType]
    var species: [MTLType]
}
