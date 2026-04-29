//
//  ContentView.swift
//  PokeDex
//
//  Created by Student on 4/27/26.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter Pokèmon Dex Num", text: $text)
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
                Spacer()
            }
            .padding().padding(.top, 30)
        }
        .background(.gray)
        .frame(height: 300)
    }
}

#Preview {
    ContentView()
}
