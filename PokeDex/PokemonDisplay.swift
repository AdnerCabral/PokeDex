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
                VStack(alignment: .center, spacing: 20)
                {
                    
                    VStack(alignment: .center)
                            {
                                Spacer()
                                Text(name)
                                    .font(.system(size: 40))
                                    
                                Text("The (species) pokemon")
                                    .font(.system(size: 20))
                                
                                Text("No. #\(dexid)")
                                    .font(.system(size: 30))
                                    .fontWidth(.expanded)
                                Spacer()
                            }
                            .frame(width: 330, height: 40)
                Spacer()
                Rectangle()
                    .frame(width: 290, height: 6)
                Spacer()
                Rectangle()
                        .frame(width: 290, height: 6)
                ZStack
                    {
                    Color(.lightGray)
                        .ignoresSafeArea()
                    Text("Image Go Here")
                    }
                    .frame(width: 280, height: 280)
                    .background()
                    .border(.black)
                    
            }
                .frame(width: 1, height: 1)
        }
        .frame(width: 350, height: 550)
        .background()
        .border(.black)
        
    }
}

#Preview {
    //PokemonDisplay(dexid: 67, name: "Galarian Darmanitan (Zen Form)", height: 67, weight: 67)
    PokemonDisplay(dexid: 67, name: "Mew", height: 67, weight: 67)
}
