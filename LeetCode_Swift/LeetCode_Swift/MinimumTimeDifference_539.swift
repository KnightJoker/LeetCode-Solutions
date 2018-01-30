//
//  MinimumTimeDifference_539.swift
//  LeetCode_Swift
//
//  Created by Huni on 30/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class MinimumTimeDifference_539 {
    func findMinDifference(_ timePoints: [String]) -> Int {
        
        var array = Array<Int>()
        
        
        for time in timePoints {
            let index = time.index(time.startIndex, offsetBy: 2)
            let hour = time.substring(to: index)
            
            let index1 = time.index(time.startIndex, offsetBy: 3)
            let min = time.substring(from: index1)
            
            array.append((Int(hour) == 0 ? 24 : Int(hour)!) * 60 + (Int(min) ?? 0))
        }
        
        var res = Int.max

        array = array.sorted()
        for i in 0..<array.count {
            let cur = array[i]
            let pre = array[(array.count - 1 + i) % array.count]
            var diff = abs(cur - pre)
            diff = min(diff, 1440 - diff)
            res = min(diff, res)
        }
        
        return res
    }
}


