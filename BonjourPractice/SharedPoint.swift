//
//  SharedPoint.swift
//  BonjourPractice
//
//  Created by Chuan-Yen Chiang on 2014/11/9.
//  Copyright (c) 2014年 Chuan-Yen Chiang. All rights reserved.
//

import Foundation

func == (lhs: SharedPoint, rhs: SharedPoint) -> Bool {
    return (lhs.netService == rhs.netService) &&
            (lhs.type == rhs.type) &&
            (lhs.ipAddress == rhs.ipAddress)
}

class SharedPoint {
    var netService:NSNetService
    var type:String
    var ipAddress:String
    
    init(netService:NSNetService, type:String, ipAddress:String) {
        self.netService = netService
        self.type = type
        self.ipAddress = ipAddress
    }
}

class SharedPoint:Equatable {

}