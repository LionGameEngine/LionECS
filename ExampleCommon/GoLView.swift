//
//  GoLView.swift
//  Example
//
//  Created by Tomasz Lewandowski on 01/01/2020.
//  Copyright © 2020 Lion Software Tomasz Lewandowski. All rights reserved.
//

import SwiftUI
import LionECS

struct GoLView: View {
    @State var gameState: GameState
    let game: GameOfLife
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        
    var body: some View {
        Path { path in
            for row in 0..<game.info.width {
                for column in 0..<game.info.height where gameState.cells[row][column] == true {
                    path.addRect(CGRect(x: game.info.cellSize*row, y: game.info.cellSize*column, width: game.info.cellSize, height: game.info.cellSize))
                }
            }
        }
        .fill(LinearGradient(gradient: .init(colors: [Color.blue, Color.green]), startPoint: UnitPoint(x: 0.5, y: 0.5), endPoint: UnitPoint(x: 1.0, y: 1.0)))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onReceive(timer) { _ in
            self.gameTick()
        }
    }
    
    private func gameTick() {
        game.world.update()
        gameState = game.stateSystem.state
    }
}

struct GoLView_Previews: PreviewProvider {
    static var previews: some View {
        GoLView(gameState: GameState(cells: []), game: GameOfLife(info: GameOfLifeInfo(width: 50, height: 50, cellSize: 10)))
    }
}
