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
    
    var dexid: Int
    var name: String
    var height: Int
    var weight: Int
    var abilties: [String]
    
    var body: some View {
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
                                Text(name)
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
                        Text("Image Go Here")
                    }
                    
                    Divider()
                    
                    
                    Text("(Species) Pokemon")
                    
                    Divider()
                    
                    Text("Type Go Here")
                    
                    Divider()
                    
                    Text("Abilties")
                    HStack{
                        ForEach(abilties, id: \.self) { item in
                            Text(item)
                            
                            
                        }}
                    
                    Divider()
                    
                    HStack
                    {
                        Text("Wieght: Go Here")
                        Divider()
                        Text("Height: Go Here")
                    }
                    
                    Divider()
                    
                    Text("Lorem Ispur dor Ismut. Lorem DIsput lore is mutt, quick brown fox big fox wuick log jumps high over the quick brown foxLorem Ispur dor Ismut. Lorem DIsput lore is mutt, quick brown fox big fox wuick log jumps high over the quick brown fox")
                        .frame(width: 370, height: 200)
                    Spacer()
                        .frame(height: 12)
                }
                
            }
        }
        
    }
}

#Preview {
    PokemonDisplay(dexid: 151, name: "Togedemaru", height: 67, weight: 67, abilties: ["Flash Fire","Drought", "Wonderguard"])
}


