//
//  Base7_504.swift
//  LeetCode_Swift
//
//  Created by Huni on 19/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class Base7_504 {
    func convertToBase7(_ num: Int) -> String {
        
        if num < 0 {
            return "-" + convertToBase7(_: -num)
        }
        if num < 7 {
            return String(num)
        }
        return convertToBase7(_:num / 7) + String(num % 7)
    }
}
