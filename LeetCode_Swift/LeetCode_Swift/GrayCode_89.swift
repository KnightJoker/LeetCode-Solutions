//
//  GrayCode_89.swift
//  LeetCode_Swift
//
//  Created by Huni on 17/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class GrayCode_89 {
    func grayCode(_ n: Int) -> [Int] {
        if n == 0{
            return[0]
        } else {
            let codes = grayCode(n - 1)
            var rtn = [Int]()
            for code in codes{
                rtn.append(code)
            }
            let head = Int(pow(Double(2),Double(n - 1)))
            let index = codes.count - 1
            for i in 0..<codes.count{
                rtn.append(head+codes[index - i])
            }
            return rtn
        }
    }
}
