//
//  GameScene.swift
//  KirbyExample
//
//  Created by Jihun Kang on 2023/12/13.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        let imageAtlas = SKTextureAtlas(named: "kirby")
        var imageArray = [SKTexture]()
        
        for i in 1...imageAtlas.textureNames.count {
            let kirbyImage = "kirby_\(i)"
            imageArray.append(SKTexture(imageNamed: kirbyImage))
        }
        
        let kirby = SKSpriteNode(texture: imageAtlas.textureNamed("kirby_1"))
        
        //노드 설정하기
        kirby.size = CGSize(width: 60, height: 60)
        kirby.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        kirby.name = "kirby"

        let kirbyAnimation = SKAction.animate(with: imageArray, timePerFrame: 0.2)
        kirby.run(SKAction.repeatForever(kirbyAnimation))
        self.addChild(kirby)

    }
}
