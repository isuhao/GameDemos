//
//  StairBack.swift
//  RainCat
//
//  Created by user on 2017/12/29.
//  Copyright © 2017年 Thirteen23. All rights reserved.
//

import UIKit
import SpriteKit

//整个小岛节点
//子类化需要注意坐标的问题，后期处理
class StairsNode: SpriteNode {
    
    let leading: CGFloat = 0
    var viewport: CGRect?
    var contentSize: CGRect?
    
    public func setup(viewport: CGRect, zposition:CGFloat, count: Int, sxtairTexture: SKTexture) {
        
    }
    
}
