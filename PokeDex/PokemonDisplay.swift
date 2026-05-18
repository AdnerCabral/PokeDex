//
//  PokemonDisplay.swift
//  PokeDex
//
//  Created by Student on 4/30/26.
//
import SwiftUI

var lightblue = Color(red: 173/255, green: 216/255, blue: 230/255)
var blue = Color(red: 100/255, green: 170/255, blue: 216/255)
struct PokemonDisplay: View {
    //@Environment(DataManager.self)private var data
    var name: String
    var dexid: Int
    var species: String
    var types: [String]
    var abilties: [String]
    var weight: Int
    var height: Int
    var sprite: String
    var shinySprite: String
    var description: String
    
    
    var body: some View {
        @State var isShiny: Bool = false
        ScrollView{
            ZStack
            {
                RoundedRectangle(cornerRadius: 25)
                    .fill(blue)
                    .frame(width: 380)
                
                VStack(alignment: .center)
                {
                    
                    Spacer()
                        .frame(height: 12)
                    
                    HStack
                    {
                        
                        Spacer()
                        
                        ZStack
                        {
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundStyle(lightblue)
                                .frame(width: 200, height: 90)
                            VStack(alignment: .center)
                            {
                                Text(name.capitalized)
                                    .font(.system(size: 30))
                            }
                        }
                        
                        ZStack
                        {
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundStyle(lightblue)
                                .frame(width: 150, height: 90)
                            Text("No. #\(dexid)")
                                .font(.system(size: 30))
                            
                        }
                        
                        Spacer()
                        
                    }
                    
                    Spacer()
                        .frame(width: 290, height: 14)
                    
                    ZStack
                    {
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundStyle(lightblue)
                            .frame(width: 350, height: 350)
                        Button(action: {
                            withAnimation
                            {
                                isShiny = !isShiny
                            }
                        })
                        {
                            if isShiny
                            {
                                AsyncImage(url: URL(string: shinySprite), scale: 3.0)
                                    
                                        
                            }
                            else
                            {
                                AsyncImage(url: URL(string: sprite), scale: 3.0)
                                    
                            }
                        }
                            
                    }
                    
                    Divider()
                    
                    
                    Text("\(species.capitalized) Pokemon")
                    
                    Divider()
                    
                    HStack{
                        ForEach(types, id: \.self) { item in
                            Text(item.capitalized)
                            
                            
                        }}
                    
                    Divider()
                    
                    Text("Abilties")
                    HStack{
                        ForEach(abilties, id: \.self) { item in
                            Text(item.capitalized)
                            
                            
                        }}
                    
                    Divider()
                    
                    HStack
                    {
                        Text("Weight: \(weight) kg")
                        Divider()
                        Text("Height: \(height) meters")
                    }
                    
                    Divider()
                    
                    Text(description)
                        .frame(width: 370, height: 200)
                    Spacer()
                        .frame(height: 12)
                }
                
            }
        }
        
    }
}

#Preview {
    PokemonDisplay( name: "ava", dexid: 67, species: "not a", types: ["Fire"], abilties: ["I dunno","Be real"], weight: 700, height: 2, sprite: "nuh uh", shinySprite: "nuh uh", description: "Ava from real life")
}


