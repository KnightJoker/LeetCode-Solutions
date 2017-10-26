//
//  PerfectNumber_507.swift
//  LeetCode_Swift
//
//  Created by Huni on 26/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class PerfectNumber_507 {
    func checkPerfectNumber(_ num: Int) -> Bool {
//        if num <= 2 {
//            return false
//        }
//        var array = Array<Int>()
//        for i in 2..<num {
//            if num % i == 0 {
//                array.append(i)
//                array.append(num / i)
//            }
//        }
//        array.append(1)
//        let reaArray = Array(Set(array))
//        var count = 0
//        for i in 0..<reaArray.count {
//            count += reaArray[i]
//        }
//        return count == num
        var sum = 1
        var appeared = Set<Int>()
        let sqrted = sqrt(Double(abs(num)))
        print(sqrted)
        let ceiling = Int(sqrted)
        guard ceiling >= 2 else {
            return false
        }
        for i in 2...ceiling {
            if num % i == 0 {
                guard !appeared.contains(i) else {
                    break
                }
                sum += i
                sum += num / i
                appeared.insert(i)
                appeared.insert(num / i)
            }
        }
        
        return sum == num
    }
}
