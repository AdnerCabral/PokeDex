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
        
           // ZStack{
                
                VStack(alignment: .center)
                {
                    Spacer()
                        .frame(width: 290, height: 6)
                    VStack(alignment: .center)
                            {
                                Text(name)
                                    .font(.system(size: 40))
                                    
                                Text("The (species) pokemon")
                                    .font(.system(size: 20))
                                
                                Text("No. #\(dexid)")
                                    .font(.system(size: 30))
                                    .fontWidth(.expanded)
                            }
                    Spacer()
                        .frame(width: 290, height: 6)
                Rectangle()
                    .frame(width: 290, height: 6)
                    
                Text("Type Go Here")
                    
                Rectangle()
                        .frame(width: 290, height: 6)
                    
                ZStack
                    {
                    Color(.lightGray)
                        .ignoresSafeArea()
                    Text("Image Go Here")
                    }
                    .frame(width: 350, height: 350)
                    .background()
                    .border(.black)
                    
                    Rectangle()
                        .frame(width: 290, height: 6)
                    HStack{
                        Text("Wieght: Go Here")
                        Spacer()
                            .frame(width:25)
                        Text("Height: Go Here")
                    }
                    Rectangle()
                            .frame(width: 290, height: 6)
                    Spacer()

            }
                .frame(width: .infinity, height: .infinity)
//        }
//        .frame(width: 350, height: 800)
        .background(Color(.darkGray))
//        .border(.black)
        
    }
}

#Preview {
    //PokemonDisplay(dexid: 67, name: "Galarian Darmanitan (Zen Form)", height: 67, weight: 67)
    PokemonDisplay(dexid: 67, name: "Mew", height: 67, weight: 67)
}
