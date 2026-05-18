//
//  Home.swift
//  PokeDex
//
//  Created by Student on 5/18/26.
//

import Foundation
import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Spacer()

                Text("PokéMenu")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .padding(.top, 50)
                
                Image("dexicon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                NavigationLink(value: "goToDex") {
                    Text("Go to Dex")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(12)
                        .padding(.horizontal, 40)
                }
                
                Spacer()
            }
            .background(Color(Color(red: 0.5294, green: 0.8275, blue: 1)))
            .navigationTitle("")
            .navigationDestination(for: String.self) { destination in
                if destination == "goToDex" {
                    ContentView()
                }
            }
        }
    }
}
