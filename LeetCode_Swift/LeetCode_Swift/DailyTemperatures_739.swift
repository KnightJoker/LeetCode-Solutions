//
//  DailyTemperatures_739.swift
//  LeetCode_Swift
//
//  Created by Huni on 14/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

/*
 这个题的思路是，在一个数组中，找到比当前数字大的数的距离，没有就写0
 */

class DailyTemperatures_739 {
//     Time Limit
//    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
//        var res = Array<Int>()
//        for i in 0..<temperatures.count {
//            for j in (i + 1)..<temperatures.count {
//                if temperatures[j] > temperatures[i] {
//                    res.append(j - i)
//                    break
//                }
//                if j == temperatures.count - 1 {
//                    res.append(0)
//                }
//            }
//        }
//        res.append(0)
//        return res
//    }
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        
        var stack = Array(repeating: 0, count: temperatures.count)
        var top = -1
        var res = Array(repeating: 0, count: temperatures.count)
        for i in 0..<temperatures.count {
            while top > -1 && temperatures[i] > temperatures[stack[top]] {
                
                let index = stack[top]
                top -= 1
                res[index] = i - index
            }
            top += 1
            stack[top] = i
        }
        return res
    }
}

