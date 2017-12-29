//
//  IslandNode.swift
//  SpiritDemo
//
//  Created by user on 2017/12/29.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit
import SpriteKit

class IslandNode: SKSpriteNode {
    
    let sheet = MapTexture()
    var sequence: SKAction?
    
    var bubbleNode: BubbleNode?
    var waterNode: SKSpriteNode?
    
    
    public func setupBrook() {
        let sprite = SKSpriteNode(texture: sheet.water_water_00000())
        sprite.position = CGPoint(x: -54, y: -75)
        waterNode = sprite
        
        let flow = SKAction.animate(with: sheet.water_water_(), timePerFrame: 1)
        let seq = SKAction.repeatForever(SKAction.sequence([flow]))
        sprite.run(seq)
        sequence = seq
        
        self.addChild(sprite)
    }
    
    public func addLesson(model: LessonModel) {
        
    }
    
    
    
}
