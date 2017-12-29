//
//  StairBack.swift
//  RainCat
//
//  Created by user on 2017/12/29.
//  Copyright © 2017年 Thirteen23. All rights reserved.
//

import UIKit
import SpriteKit

//子类化需要注意坐标的问题，后期处理
class StairsNode: SKNode {
    
    let leading: CGFloat = 0
    var viewport: CGRect?
    var contentSize: CGRect?
    
    public func setup(viewport: CGRect, zposition:CGFloat, count: Int, sxtairTexture: SKTexture) {
//        self.viewport = viewport
//        let skyNode = SKShapeNode(rect: CGRect(origin: CGPoint(),
//                                               size: CGSize(width: stairTexture.size().width * CGFloat(count) + leading,
//                                                            height: viewport.height)))
//        let skyNode = SKShapeNode(rect: CGRect(origin: CGPoint(x:0, y:100),
//                                               size: CGSize(width: viewport.size.width, height: viewport.size.height)))
//        print("背景frame：")
//        print(NSStringFromCGRect(skyNode.frame))
//
//        skyNode.fillColor = SKColor(red:0.38, green:0.60, blue:0.65, alpha:1.0)
//        skyNode.strokeColor = SKColor.clear
//        skyNode.zPosition = zposition + 1
//        skyNode.position = CGPoint(x: 0, y: 0)
//        self.addChild(skyNode)
//
//        print("背景point：")
//        print(NSStringFromCGPoint(skyNode.position))
//
        
//        for item in 1...count {
//            let stair = SKSpriteNode.init(texture: stairTexture)
//            stair.position = CGPoint(x: leading + (stairTexture.size().width/2) * CGFloat(item-1), y: stairTexture.size().height/2)
//            self.addChild(stair)
//        }

        //        physicsBody = SKPhysicsBody(edgeFrom: startPoint, to: endPoint)
        //        physicsBody?.restitution = 0.3
        //
        //        physicsBody?.categoryBitMask = FloorCategory
        //        physicsBody?.contactTestBitMask = RainDropCategory
        
    }
    
}
