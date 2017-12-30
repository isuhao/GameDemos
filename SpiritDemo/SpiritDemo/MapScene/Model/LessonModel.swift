//
//  LessonModel.swift
//  SpiritDemo
//
//  Created by user on 2017/12/29.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit

class LessonModel: NSObject {
    
    var item: Int?          //序列
    var position: CGPoint?  //在map上的相对位置
    
    var title: String?      //标题
    
    var preparation: Bool?   //预习状态
    var clouse: Bool?        //上课状态
    var homework: Bool?      //作业状态
    var handout: Bool?       //讲义状态
    
    var done: Bool?         //是否已完成
    
}
