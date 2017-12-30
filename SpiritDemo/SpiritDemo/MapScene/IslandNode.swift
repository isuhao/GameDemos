//
//  IslandNode.swift
//  SpiritDemo
//
//  Created by user on 2017/12/29.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit
import SpriteKit

//单个小岛节点
class IslandNode: SpriteNode {
    
    let sheet = MapTexture()
    
    //水流
    var sequence: SKAction?
    var waterNode: SKSpriteNode?
    
    
    //添加课程
    public func setupLesson(model: LessonModel) {
        let bubbleNode: BubbleNode = BubbleNode.init(model: transModel(lesson: model))
        bubbleNode.position = model.position ?? CGPoint(x: 0, y: 0)
        self.addChild(bubbleNode)
    }
    
    //根据课程状态转换气泡状态
    private func transModel(lesson: LessonModel) -> BubbleModel {
        let model: BubbleModel = BubbleModel()
        model.title = lesson.title
        
        var stars: [StarModel] = [StarModel]()
        stars.append(self.starModel(on: lesson.preparation))
        stars.append(self.starModel(on: lesson.clouse))
        stars.append(self.starModel(on: lesson.homework))
        stars.append(self.starModel(on: lesson.handout))
        model.stars = stars
        
        if lesson.done != nil {
            if lesson.done! {
                model.markState = .light
            } else {
                model.markState = .gray
            }
        } else {
            model.markState = .unused
        }
        return model;
    }
    
    
    private func starModel(on: Bool?) -> StarModel {
        let model = StarModel()
        if on != nil {
            if on! {
                model.state = .light
            } else {
                model.state = .gray
            }
        } else {
            model.state = .none
        }
        return model
    }
    
    
    //添加水流
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
    
    
    
    
    
}
