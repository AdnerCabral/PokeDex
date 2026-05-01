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
                    
                    
                    VStack(alignment: .leading)
                            {
                                Spacer()
                        
                                Text(name)
                                    //.minimumScaleFactor(CGFloat: 30)
                                    .fontWidth(.expanded)
                                Text("No. #\(dexid)")
                                    .font(.subheadline)
                                    .fontWidth(.expanded)
                                Spacer()
                            }
                            .frame(width: 340)
                            .border(.black)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 30))
                            
                    
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
        .frame(width: 350, height: 500)
        .background()
        .border(.black)
        
    }
}

#Preview {
    PokemonDisplay(dexid: 67, name: "Galarian Darmanitan (Zen Form)", height: 67, weight: 67)
}
