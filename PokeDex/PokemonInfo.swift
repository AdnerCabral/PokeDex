//
//  PokemonInfo.swift
//  PokeDex
//
//  Created by Student on 4/28/26.
//

import SwiftUI

//struct PokeResponse: Codable{
//    var results: [PokemonInfo]
//}

struct PokemonInfo: Identifiable, Codable {
    var id: Int
    var name: String
    var height: Int
    var weight: Int
    var sprites: SpriteType
    var forms: [FormType]
    var abilities: [AbilityType]
    var stats: [StatType]
    var types: [TypeType]
    var moves: [MoveType]
    var species: SpeciesType
}

struct SpriteType: Codable {
    var other: OA
}

struct OA: Codable {
    var officialartwork: Artwork
    
    enum CodingKeys: String, CodingKey {
        case officialartwork = "official-artwork"
    }
}

struct Artwork: Codable {
    var front_default: String
    var front_shiny: String
}

struct FormType: Codable {
    var name: String
}

struct AbilityType: Codable {
    var ability: AbilitySpec
    var is_hidden: Bool
}

struct AbilitySpec: Codable {
    var name: String
}

struct StatType: Codable {
    var stat: StatSpec
}

struct StatSpec: Codable {
    var name: String
}

struct TypeType: Codable {
    var slot: Int
    var type: DetailType 
}

// Represents the nested "type" object containing the name
struct DetailType: Codable {
    var name: String
    var url: String
}


struct MoveType: Codable {
    var move: MoveSpec
}

struct MoveSpec: Codable {
    var name: String
}

struct SpeciesType: Codable {
    var name: String
}
