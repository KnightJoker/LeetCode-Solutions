//
//  Combinations_77.swift
//  LeetCode_Swift
//
//  Created by Huni on 2018/4/18.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation



class Combinations_77 {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var result:[[Int]] = []
        var combine:[Int] = Array.init(repeating: 0, count: k)
        
        func getAllCombine(_ combine: inout [Int], _ index: Int, _ start: Int) {
            if index >= k {
                result.append(combine)
                return
            }
            
            for i in start...(n-(k-index)) {
                combine[index] = i+1
                getAllCombine(&combine, index+1, i+1)
            }
        }
        
        getAllCombine(&combine, 0, 0)
        
        return result
    }
}

