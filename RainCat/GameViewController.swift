//
//  GameViewController.swift
//  RainCat
//
//  Created by NJUcong on 2017/5/19.
//  Copyright © 2017年 NJU. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 //       let sceneNode = GameScene(size: CGSize(width: 512, height: 384))
        let sceneNode = MenuScene(size: view.frame.size)
     
        if let view = self.view as! SKView? {
            view.presentScene(sceneNode)
            view.ignoresSiblingOrder = true
            
//            view.showsPhysics = true
//            view.showsFPS = true
//            view.showsNodeCount = true
        }
        SoundManager.sharedInstance.startPlaying()
    }
    
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
