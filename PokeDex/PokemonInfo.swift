//
//  PokemonInfo.swift
//  PokeDex
//
//  Created by Student on 4/28/26.
//

import SwiftUI

struct PokeResponse: Codable{
    var results: [PokemonInfo]
}

struct PokemonInfo: Identifiable, Codable {
    var id: Int
    var name: String
    var height: Int
    var weight: Int
    var sprite: [SpriteType]
    var forms: [FormType]
    var abilities: [AbilityType]
    var stats: [StatTyoe]
    var types: [TypeType]
    var moves: [MoveType]
    var species: [SpeciesType]
}

struct SpriteType: Codable {
    var front_default: String
    var front_shiny: String
}

struct FormType: Codable {
    var name: String
    var url: String
}

struct AbilityType: Codable {
    var ability: AbilitySpec
    var is_hidden: Bool
}

struct AbilitySpec: Codable {
    var name: String
    var url: String
}

struct StatTyoe: Codable {
    var stat: StatSpec
}

struct StatSpec: Codable {
    var name: String
    var url: String
}

struct TypeType: Codable {
    var name: String
    var url: String
}

struct MoveType: Codable {
    var move: MoveSpec
}

struct MoveSpec: Codable {
    var name: String
    var url: String
}

struct SpeciesType: Codable {
    var name: String
    var url: String
}
