//
//  hw1_147App.swift
//  hw1_147
//
//  Created by User12 on 2021/3/3.
//

import SwiftUI

@main

struct hw1_147App: App {
    @StateObject var optionColors = OptionColors()
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
