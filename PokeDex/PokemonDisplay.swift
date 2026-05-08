//
//  PokemonDisplay.swift
//  PokeDex
//
//  Created by Student on 4/30/26.
//
import SwiftUI

var lightblue = Color(red: 173/255, green: 216/255, blue: 230/255)
var blue = Color(red: 100/255, green: 170/255, blue: 216/255)
struct rectangleboxpull: View {

    var colour1: Color
    var colour2: Color
    var width1: CGFloat
    var tall1: CGFloat
    var width2: CGFloat
    var tall2: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(colour1)
            .frame(width: width1, height: tall1)
        RoundedRectangle(cornerRadius: 25)
            .fill(colour2)
            .frame(width: width2, height: tall2)
    }
}
struct PokemonDisplay: View {
    //@Environment(DataManager.self)private var data
    
    var dexid: Int
    var name: String
    var height: Int
    var weight: Int
//    enum PokemonType {
//        case fire
//        case water
//        case air
//        case ground
//        case rock
//        
//    }
//    var firstType: PokemonType
//    var secondType: PokemonType
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
                    HStack{
                        Spacer()
                        ZStack{
                            rectangleboxpull(colour1: blue, colour2: lightblue, width1: 210, tall1: 90, width2: 200, tall2: 90)
                            VStack(alignment: .center)
                            {
                                Text(name)
                                    .font(.system(size: 30))
                                
                               
                            }
                        }
                        
                        ZStack{
                            rectangleboxpull(colour1: blue, colour2: lightblue, width1: 150, tall1: 90, width2: 140, tall2: 90)
                                .frame(width: 140, height: 90)
                            Text("No. #\(dexid)")
                                .font(.system(size: 25))
                                .fontWidth(.expanded)
                        }
                        Spacer()
                    }
                    
                    
                    Spacer()
                        .frame(width: 290, height: 6)
                    
                                
                                
                            
                    Spacer()
                        .frame(width: 290, height: 6)

                    
                ZStack
                    {
                        rectangleboxpull(colour1: blue, colour2: lightblue, width1: 360, tall1: 360, width2: 350, tall2: 350)
                        Text("Image Go Here")
                    }
                    
                    
                    Rectangle()
                        .frame(width: 290, height: 6)
                        
                    Text("(Species) Pokemon")
                    
                    Rectangle()
                        .frame(width: 290, height: 6)
                        
                    Text("Type Go Here")
                        
                    
                    Rectangle()
                        .frame(width: 290, height: 6)
                    
                    Text("Abilties")
                    HStack{
                        Text("67")
                        Spacer()
                            .frame(width:25)
                        Text("67")
                    }
                    HStack{
                        Text("67")
                        Spacer()
                            .frame(width:25)
                        Text("67")
                    }
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
                    Text("Lorem Ispur dor Ismut. Lorem DIsput lore is mutt, quick brown fox big fox wuick log jumps high over the quick brown fox")

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
    PokemonDisplay(dexid: 151, name: "Togedemaru", height: 67, weight: 67)
}


