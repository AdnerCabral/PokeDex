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
    @State private var dexNum: Int = 1
    @State private var name: String = ""
    @State private var height: Int = 0
    @State private var weight: Int = 0
    @State private var abilities: [String] = []
    
    var body: some View {
        VStack (spacing: 20) {
            HStack {
                TextField("   Enter Pokèmon Dex Num", text: $text)
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
                    .onSubmit {
                        Task {
                            await data.searchPokemon(query: text)
                        }
                    }
                Spacer()
            }
            .padding().padding(.top, 30)
            PokemonDisplay(dexid: <#T##Int#>, name: <#T##String#>, height: <#T##Int#>, weight: <#T##Int#>, abilties: <#T##[String]#>)
            HStack (spacing: 20){
                Button {
                    dexNum -= 1
                    if dexNum < 1 {
                        dexNum = 1025
                    }
                    Task{
                        await data.fetchPokemon(id: dexNum)
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
                    }
                } label: {
                    Label("", systemImage: "arrowshape.right.fill")
                }
            }
            .background(.gray)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
    }
}

#Preview {
    ContentView()
}
