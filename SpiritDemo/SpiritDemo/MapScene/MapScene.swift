//
//  MapScene.swift
//  RainCat
//
//  Created by user on 2017/12/28.
//  Copyright © 2017年 Thirteen23. All rights reserved.
//

import UIKit
import SpriteKit

class MapScene: SKScene {
    
    let stairsTop:      CGFloat = 768-543-62     //长岛上部距顶距离
    let stairsLeading:  CGFloat = 71             //左部间隙
    let stairsTrailing: CGFloat = 137             //右部间隙
    
    var stairsBack: SKShapeNode?        //长岛背景
    override func sceneDidLoad() {
        
        //背景
        let backTexture = MapTexture().bg()
        let back = SKSpriteNode.init(texture: backTexture)
        back.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        back.zPosition = 0
        self.addChild(back)
        print("背景position：")
        print(NSStringFromCGPoint(back.position))
        
        stairNumber = 6 //小岛数
        //长岛背景
        let stairTexture = MapTexture().stair_stip()
        let halfTextureWidth = stairTexture.size().width/2
        stairTextureWidth = halfTextureWidth * 2
        print("小岛纹理大小：" + NSStringFromCGSize(stairTexture.size()))
        let vp = CGRect(origin: CGPoint(x: 0, y: stairsTop),
                        size: CGSize(width: stairsLeading +  halfTextureWidth * CGFloat(stairNumber!*2) + stairsTrailing,
                                     height: stairTexture.size().height))
        print("可见区域：")
        print(NSStringFromCGRect(vp))
        let skyNode = SKShapeNode(rect: vp)
        skyNode.fillColor = SKColor(red:0.38, green:0.60, blue:0.65, alpha:1.0)
        skyNode.fillColor = SKColor.clear
        skyNode.strokeColor = SKColor.clear
        skyNode.zPosition = 1
        //以父视图的position为原点的相对位置,长方形节点rect使用后默认position为0,0（此时相对于父节点）
        skyNode.position = CGPoint(x: 0, y: 0)
        
        print("长岛背景position：")
        print(NSStringFromCGPoint(skyNode.position))
        print("长岛背景frame：")
        print(NSStringFromCGRect(skyNode.frame))
        self.addChild(skyNode)
        self.stairsBack = skyNode
        
        //中间长岛
        for item in 1...stairNumber! {
            
            let stair = IslandNode.init(texture: stairTexture)
            stair.position = CGPoint(x: (stairsLeading +  halfTextureWidth * CGFloat(item*2 - 1)),
                                     y: stairTexture.size().height/2 + stairsTop)
            self.stairsBack!.addChild(stair)
            
            stair.setupBrook() //添加流水
            
            //添加课程
            let lesson = LessonModel()
            lesson.item = 1;
            lesson.position = CGPoint(x: 0, y: 0)
            lesson.title = "测试"
//            lesson.preparation = true
//            lesson.homework = true
//            lesson.handout = true
//            lesson.clouse = true
            lesson.done = true
            stair.setupLesson(model: lesson)
            
            print("单岛frame：" + NSStringFromCGRect(stair.frame))
            print("单岛position：" + NSStringFromCGPoint(stair.position))
        }
        
    }
    
    
    var beginTouchPoint_x: CGFloat?
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touchPoint = touches.first?.location(in: self)
        if let point = touchPoint {
            beginTouchPoint_x = point.x
            lastTouchPoint_x = nil
            minPosition_x = MIN_POSITION_X
            let transNumber = CGFloat(stairNumber!-1)
            maxPosition_x = -(transNumber) * stairTextureWidth!
        
        }
        
    }
    
    let MIN_POSITION_X: CGFloat = 0
    
    var lastTouchPoint_x: CGFloat?                  //上次移动结束后x点
    var minPosition_x: CGFloat?                     //最左端
    var maxPosition_x: CGFloat?                     //最右端
    
    var stairTextureWidth: CGFloat?                 //小岛宽
    var stairNumber: Int?                           //小岛数
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touchPoint = touches.first?.location(in: self)
//        print(NSStringFromCGPoint((stairsBack?.position)!))
        
        if let point = touchPoint {
            if lastTouchPoint_x != nil {
                if point.x != lastTouchPoint_x {
                    var relativeMove_x = point.x - lastTouchPoint_x!
                    
                    if (stairsBack?.position.x)! > minPosition_x! { //地图拉到最左端
                        relativeMove_x = 0;
                        stairsBack?.position = CGPoint(x: minPosition_x!, y: (stairsBack?.position.y)!)
                    } else if (stairsBack?.position.x)! < maxPosition_x! { //地图拉到最右端
                        relativeMove_x = 0;
                        stairsBack?.position = CGPoint(x: maxPosition_x!, y: (stairsBack?.position.y)!)
                    } else { //在地图可见部分拉动
                        stairsBack?.position = CGPoint(x: (stairsBack?.position.x)! + relativeMove_x, y: (stairsBack?.position.y)!)
                    }
                }
            }
            lastTouchPoint_x = point.x
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        // Initialize _lastUpdateTime if it has not already been
        
    }
}
