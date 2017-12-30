//
//  StarModel.swift
//  SpiritDemo
//
//  Created by charles on 2017/12/30.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit

enum StarState {
    case light
    case gray
    case none
}

class StarModel: NSObject {
    
    var state: StarState?   //星星1状态
}
