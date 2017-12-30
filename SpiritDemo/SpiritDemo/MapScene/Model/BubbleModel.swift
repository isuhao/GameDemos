//
//  BubbleModel.swift
//  SpiritDemo
//
//  Created by charles on 2017/12/30.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit

enum MarkState {
    case light  //亮
    case gray   //不亮
    case unused //未使用
}

class BubbleModel: NSObject {
    
    var stars: [StarModel]? //星星
    
    var title: String?      //标题
    var fontSize: CGFloat?   //标题字体大小
    var fontColor: UIColor?
    
    var markState: MarkState?  //标注状态
}
