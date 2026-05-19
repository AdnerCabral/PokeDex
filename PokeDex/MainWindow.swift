//
//  ContentView.swift
//  PokeDex
//
//  Created by Student on 4/27/26.
//

import SwiftUI

struct ContentView: View {
    @Environment(DataManager.self)private var data
    @State private var text: String = ""
    @State private var name: String = ""
    @State private var dexNum: Int = 1
    @State private var species: String = ""
    @State private var types: [String] = []
    @State private var abilities: [String] = []
    @State private var weight: Int = 0
    @State private var height: Int = 0
    @State private var sprite: String = ""
    @State private var shinySprite: String = ""
    @State private var desc: String = ""

    
    var body: some View {
        VStack (spacing: 20) {
            HStack {
                TextField("Enter Pokèmon Name", text: $text)
                    .padding(.horizontal, 40)
                    .background(Color(#colorLiteral(red: 0.9294475317, green: 0.9239223003, blue: 0.9336946607, alpha: 1)))
                    .clipped()
                    .cornerRadius(10)
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 16)
                        }
                    )
                    .onChange(of: text) { oldValue, newValue in
                        Task {
                            await data.searchPokemon(query: newValue)
                            updateUI()
                        }
                    }
                    .autocorrectionDisabled(true)
                Spacer()
            }
            .padding().padding(.top, 10)
            PokemonDisplay(name: name, dexid: dexNum, species: species, types: types, abilties: abilities, weight: weight, height: height, sprite: sprite, shinySprite: shinySprite, description: desc)
            HStack (spacing: 20){
                Button {
                    dexNum -= 1
                    if dexNum < 1 {
                        dexNum = 1025
                    }
                    Task{
                        await data.fetchPokemon(id: dexNum)
                        updateUI()
                    }
                } label: {
                    Label("", systemImage: "arrowshape.left.fill")
                    
                }
                Button {
                    dexNum += 1
                    if dexNum > 1025 {
                        dexNum = 1
                    }
                    Task{
                        await data.fetchPokemon(id: dexNum)
                        updateUI()
                    }
                } label: {
                    Label("", systemImage: "arrowshape.right.fill")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 10, alignment: .bottom)
        }
        
        
    }
    private func updateUI() {
           guard let current = data.currentPokemon else { return }
           
           self.name = current.name
           self.dexNum = current.id
           self.weight = current.weight
           self.height = current.height
           
        self.sprite = current.sprites.other.officialartwork.front_default
        self.shinySprite = current.sprites.other.officialartwork.front_shiny
           
           self.types = current.types.map { $0.type.name }
           
           self.abilities = current.abilities.map { $0.ability.name }
           
           self.species = current.name
       }
}


#Preview {
    ContentView()
}
