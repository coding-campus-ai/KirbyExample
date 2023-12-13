//
//  GameViewController.swift
//  KirbyExample
//
//  Created by Jihun Kang on 2023/12/13.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            //캐릭터가 만들어질 장면
            let scene = GameScene()
            
            //장면과 뷰 설정
            scene.scaleMode = .resizeFill
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
            
            //뷰에 장면 출력
            view.presentScene(scene)
        }
        
      
    }

}
