//
//  BeautifulArrangementII_667.swift
//  LeetCode_Swift
//
//  Created by Huni on 19/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class BeautifulArrangementII_667 {
    func constructArray(_ n: Int, _ k: Int) -> [Int] {
        var p = 1
        var q = n
        var res = [Int](repeating: 0, count: n)
        guard k > 1 else {
            return res.enumerated().map {$0.0 + 1}
        }
        var useP = true
        for i in 0 ..< k {
            if i % 2 == 0 {
                res[i] = p
                p += 1
                useP = false
            }
            else{
                res[i] = q
                q -= 1
                useP = true
            }
        }
        var u = useP == true ? q : p
        for i in k ..< n {
            res[i] = u
            if useP == false {
                u += 1
            }
            else {
                u -= 1
            }
        }
        
        return res
    }
}

