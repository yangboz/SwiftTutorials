//
//  Swap.swift
//  CookieCrunch
//
//  Created by yangboz on 14-7-6.
//  Copyright (c) 2014年 GODPAPER. All rights reserved.
//

import Foundation

class Swap: Printable {
    var cookieA: Cookie
    var cookieB: Cookie
    
    init(cookieA: Cookie, cookieB: Cookie) {
        self.cookieA = cookieA
        self.cookieB = cookieB
    }
    
    var description: String {
    return "swap \(cookieA) with \(cookieB)"
    }
}