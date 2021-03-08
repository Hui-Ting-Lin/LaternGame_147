//
//  RiddleView.swift
//  hw1_147
//
//  Created by User12 on 2021/3/3.
//

import SwiftUI

struct RiddleView: View {
    @EnvironmentObject var optionColors: OptionColors
    var riddle: Riddle
    var body: some View {
        VStack{
            Text(riddle.question)
                .foregroundColor(.white)
                .font(Font.system(size: 30))
                .padding()
            Text(riddle.hint)
                .foregroundColor(.white)
                .font(Font.system(size: 15))
                .padding()
            OptionsView(riddle: riddle)
        }
    }
}

struct OptionsView: View {
    @EnvironmentObject var optionColors: OptionColors
    var riddle: Riddle
    var body: some View {
        VStack{
            Text("A. \(riddle.options[0])")
                .frame(width: 150, height: 25, alignment: .center)
                .onTapGesture{
                    if(riddle.options[0]==riddle.answer){
                        if(optionColors.colors[0] != Color.green){
                            optionColors.score+=10
                        }
                        
                        optionColors.colors[0] = Color.green
                    }
                    else{
                        if(optionColors.colors[0] != Color.green&&optionColors.colors[1] != Color.green&&optionColors.colors[2] != Color.green&&optionColors.colors[3] != Color.green){
                            optionColors.colors[0] = Color.red
                            optionColors.colors[riddle.ansPosition] = Color.green
                        }
                    }
                }
                .foregroundColor(optionColors.colors[0])
                .padding()
                .font(Font.system(size: 25))
            
            
            Text("B. \(riddle.options[1])")
                .frame(width: 150, height: 25, alignment: .center)
                .onTapGesture{
                    if(riddle.options[1]==riddle.answer){
                        if(optionColors.colors[1] != Color.green){
                            optionColors.score+=10
                        }
                        optionColors.colors[1] = Color.green
                    }
                    else{
                        if(optionColors.colors[0] != Color.green&&optionColors.colors[1] != Color.green&&optionColors.colors[2] != Color.green&&optionColors.colors[3] != Color.green){
                            optionColors.colors[1] = Color.red
                            optionColors.colors[riddle.ansPosition] = Color.green
                        }
                        
                    }
                }
                .foregroundColor(optionColors.colors[1])
                .padding()
                .font(Font.system(size: 25))
            
            
            Text("C. \(riddle.options[2])")
                .frame(width: 150, height: 25, alignment: .center)
                .onTapGesture{
                    if(riddle.options[2]==riddle.answer){
                        if(optionColors.colors[2] != Color.green){
                            optionColors.score+=10
                        }
                        optionColors.colors[2] = Color.green
                    }
                    else{
                        if(optionColors.colors[0] != Color.green&&optionColors.colors[1] != Color.green&&optionColors.colors[2] != Color.green&&optionColors.colors[3] != Color.green){
                            optionColors.colors[2] = Color.red
                            optionColors.colors[riddle.ansPosition] = Color.green
                        }
                    }
                }
                .foregroundColor(optionColors.colors[2])
                .padding()
                .font(Font.system(size: 25))
            
            
            Text("D. \(riddle.options[3])")
                .frame(width: 150, height: 25, alignment: .center)
                .onTapGesture{
                    if(riddle.options[3]==riddle.answer){
                        if(optionColors.colors[3] != Color.green){
                            optionColors.score+=10
                        }
                        optionColors.colors[3] = Color.green
                    }
                    else{
                        if(optionColors.colors[0] != Color.green&&optionColors.colors[1] != Color.green&&optionColors.colors[2] != Color.green&&optionColors.colors[3] != Color.green){
                            optionColors.colors[3] = Color.red
                            optionColors.colors[riddle.ansPosition] = Color.green
                        }
                    }
                }
                .foregroundColor(optionColors.colors[3])
                .padding()
                .font(Font.system(size: 25))
        }
    }
    
}

