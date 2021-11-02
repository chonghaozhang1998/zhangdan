//
//  HomepageItemData.swift
//  zhangdan
//
//  Created by chasingzch on 2021/11/1.
//

import UIKit

class ItemData: NSObject {
    
    
    // 订单日期相关
    var createDate:Date // 创建订单的日期
    var sendDate:Date // 发货日期
    var receivingMoneyDate:Date // 收款日期
    var address:String // 订单地址
    
    // 订单收货人相关
    var name:String // 收货人姓名
    var phoneNumber: UInt // 收货人电话号码
    
    // 订单货物相关
    var shuiguan:[Shuiguan] // 水罐
    var peijian:[Peijian] // 配件
    
    override init() {
        super.init()
        self.createDate = Date()
    }
    
    // 当前订单新增水罐
    func addShuiguan(shuiguan: Shuiguan) {
        self.shuiguan.append(shuiguan)
    }
    
    // 当前订单新增配件
    func addPeijian(peijian: Peijian) {
        self.peijian.append(peijian)
    }
    
}


class Shuiguan: NSObject { // 水罐
    var height:Double // 水罐高度
    var width:Double // 水罐宽度
    var count:UInt // 水罐数量
    var danjia:NSDecimalNumber // 水罐单价
    
    init(height: Double, width: Double, count: UInt, danjia: NSDecimalNumber) {
        self.height = height
        self.width = width
        self.count = count
        self.danjia = danjia
    }
}

class Peijian: NSObject { // 配件
    var name:String // 配件名称
    var count:UInt // 配件数量
    var danjia:NSDecimalNumber // 配件单价
    
    init(name:String, count:UInt, danjia:NSDecimalNumber) {
        self.name = name
        self.count = count
        self.danjia = danjia
    }
}
