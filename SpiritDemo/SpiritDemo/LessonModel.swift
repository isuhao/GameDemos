//
//  LessonModel.swift
//  SpiritDemo
//
//  Created by user on 2017/12/29.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit

enum StarState {
    case Light(String)
    case Gray(String)
    case None
}

class LessonModel: NSObject {
    var item: Int?  //序列
    
    var star1on: Bool?           //是否有星星1
    var star1State: StarState?   //星星1状态
    
    var star2on: Bool?
    var star2State: StarState?
    
    var star3on: Bool?
    var star3State: StarState?
    
    var star4on: Bool?
    var star4State: StarState?
    
    var title: String?
    var done: Bool?    //是否已完成
    
}
