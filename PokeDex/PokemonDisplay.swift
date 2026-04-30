//
//  PokemonDisplay.swift
//  PokeDex
//
//  Created by Student on 4/30/26.
//
import SwiftUI

struct PokemonDisplay: View {
    
    var dexid: Int
    var name: String
    var height: Int
    var weight: Int
  /*   var sprite: [MTLType]
    var forms: [MTLType]
    var abilities: [MTLType]
    var stats: [MTLType]
    var types: [MTLType]
    var moves: [MTLType]
    var species: [MTLType] */
    
    var body: some View {
        
            ZStack{
                Color(.darkGray)
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: 40)
                {
                    
                    HStack(alignment: .center)
                            {
                                Spacer()
                        
                                Text(name)
                                Spacer()
                                Rectangle()
                                    .frame(width: 3, height: 70)
                                Spacer()
                                Text(String(dexid))
                                Spacer()
                            }
                            .frame(width: 300)
                            .border(.black)
                    
                    .frame(width: 300, height: 20)
                    Rectangle()
                        .frame(width: 290, height: 6)
                ZStack{
                    Color(.lightGray)
                        .ignoresSafeArea()
                    Text("Image Go Here")
                }
                .frame(width: 280, height: 280)
                .background()
                .border(.black)
            }
        }
        .frame(width: 300, height: 500)
        .background()
        .border(.black)
        
    }
}

#Preview {
    PokemonDisplay(dexid: 0, name: "Pikachew", height: 67, weight: 67)
}
