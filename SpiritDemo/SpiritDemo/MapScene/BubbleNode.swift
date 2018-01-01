//
//  BubbleNode.swift
//  SpiritDemo
//
//  Created by user on 2017/12/29.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit
import SpriteKit

extension BubbleNode {
    
}

class BubbleNode: SpriteNode {
    
    var sheet = MapTexture()
    var stars: [StarNode]?  //星星
    
    private var p_model: BubbleModel?
    public var bubbleModel: BubbleModel? {
        get { return p_model }
    }
    
    var bubbleBack: SKSpriteNode?   //背景框
    var titleLabel: SKLabelNode?    //标题
    
    var markNode: SKSpriteNode?     //底部标注
    
    public convenience init(model: BubbleModel) {
        self.init()
        p_model = model
        self.name = model.name
        
        //中间气泡，其他标注以气泡为准排布
        let bubble = SKSpriteNode(texture: sheet.bubble())
        bubble.position = CGPoint(x: 0, y: 0)
        self.addChild(bubble)
        bubbleBack = bubble;
        
        //气泡标题
        let title = SKLabelNode.init(fontNamed: "Chalkduster")
        title.text = model.title ?? ""
        title.fontSize = 10
        title.fontColor = UIColor.white
        title.position = CGPoint(x: 0, y: 0)
        title.zPosition = bubble.zPosition + 1
        bubble.addChild(title)
        titleLabel = title;
        
        //底部标注
        var texture = SKTexture()
        switch model.markState! {
        case MarkState.light:
            texture = sheet.lesson_light()
        case MarkState.gray:
            texture = sheet.lesson_gray()
        case MarkState.unused:
            texture = sheet.lesson_unuse()
        }
        let mark = SKSpriteNode.init(texture: texture)
        mark.position = CGPoint(x: bubble.position.x, y: bubble.position.y - 60)
        self.addChild(mark)
        markNode = mark;
        
        //星星
        var starNodes = [StarNode]()
        for model in model.stars! {
            let star = StarNode.init(model: model)
            star.position = CGPoint(x: bubble.position.x, y: bubble.position.y + 40)
            starNodes.append(star)
        }
        stars = starNodes
    }
    
    //切换星星状态
    func switchStarNodeState(starNode: inout StarNode, on: Bool) {
        if on {
            starNode.texture = MapTexture().star()
        } else {
            starNode.texture = MapTexture().startno()
        }
    }
    
    
    
}














