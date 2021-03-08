//
//  BackgroundView.swift
//  hw1_147
//
//  Created by User22 on 2021/3/5.
//

import SwiftUI

struct BackgroundView: View {
    var doorOpacity: Double
    var doorX1: CGFloat
    var doorX2: CGFloat
    var body: some View {
        ZStack{
            Color(red: 37/255, green: 52/255, blue: 80/255)
            HStack{
                Image("door1")
                    .resizable()
                    .scaledToFit()
                    .offset(x: doorX1, y: 0)
                    .opacity(doorOpacity)
                Image("door1")
                    .resizable()
                    .scaledToFit()
                    .offset(x: doorX2, y: 0)
                    .opacity(doorOpacity)
            }
            HStack{
                Image("lantern")
                    .resizable()
                    .frame(width: 300, height: 300, alignment: .top)
                    .offset(x: -97, y: -365)
                Image("lantern")
                    .resizable()
                    .frame(width: 300, height: 300, alignment: .top)
                    .offset(x: -97, y: -365)
                
            }
        }
        .ignoresSafeArea()
    }
}

