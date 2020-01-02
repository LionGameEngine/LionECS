//
//  ContentView.swift
//  Example
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 LionSoftware. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var game: Game
    
    var body: some View {
        Text(HealthComponent.componentIdentifier)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(game: Game())
    }
}
