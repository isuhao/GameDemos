//
//  StarNode.swift
//  SpiritDemo
//
//  Created by charles on 2017/12/30.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit
import SpriteKit

extension StarNode {
    
}

class StarNode: SpriteNode {
    public convenience init(model: StarModel) {
        self.init()
        var texture: SKTexture;
        if let state = model.state {
            switch state {
            case .light:
                texture = MapTexture().star()
            case .gray:
                texture = MapTexture().startno()
            case .none:
                texture = SKTexture()
            }
            self.texture = texture
        }
    }
}






