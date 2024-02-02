//
//  GameView.swift
//  FallingMath
//
//  Created by Pedro Pessuto on 01/02/24.
//

import SwiftUI
import SpriteKit

struct GameView: View {
    
    @Environment(GameController.self) private var gameController
    
    var scene: GameScene {
        let scene = GameScene()
        scene.gameData = gameController
        scene.scaleMode = .resizeFill
        return scene
    }
    
    var body: some View {
        ZStack {

            // Background
            BackgroundView(gameData: gameController)

            // Tela de pontuação
            ScoreBoardView(gameData: gameController)

            // Frame do jogo
            SpriteView(scene: scene, options: [.allowsTransparency], debugOptions: [.showsFPS, .showsNodeCount])

            // Fazer operações
            OperationsView(gameData: gameController)


        }

    }
}