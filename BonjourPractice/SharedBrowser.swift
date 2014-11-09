//
//  SharedBrowser.swift
//  BonjourPractice
//
//  Created by Chuan-Yen Chiang on 2014/11/9.
//  Copyright (c) 2014年 Chuan-Yen Chiang. All rights reserved.
//

import Foundation

optional func netServiceBrowser(_ netServiceBrowser: NSNetServiceBrowser, didfind

protocol NSNetServiceBrowserDelegate : NSObjectProtocol {
    
}

class NSObject : NSObjectProtocol {
    
}

class SharedBrowser : NSObject {
    let afpType:String
    let smbType:String
    var smbBrowser:NSNetServiceBrowser
    var afpBrowser:NSNetServiceBrowser
    var serviceList:[NSNetService]
    var sharedPointsList:[SharedPoint]
    override init() {
        self.afpType = "_afpovertcp._tcp"
        self.smbType = "_smb._tcp"
        self.smbBrowser = NSNetServiceBrowser()
        self.afpBrowser = NSNetServiceBrowser()
        self.serviceList = [NSNetService]()
        self.sharedPointsList = [SharedPoint]()
        
        super.init()
        self.afpBrowser.delegate = self
        self.smbBrowser.delegate = self
    }
}

class SharedBrowser:NSObject, NSNetServiceBrowserDelegate {
    
}