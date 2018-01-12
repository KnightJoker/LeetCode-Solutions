//
//  FindAnagramMappings_760.swift
//  LeetCode_Swift
//
//  Created by Huni on 12/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class FindAnagramMappings_760 {
    func anagramMappings(_ A: [Int], _ B: [Int]) -> [Int] {
        
        var res = [Int](repeating: -1, count: A.count)
        var dic = Dictionary<Int, Int>()
        
        for i in 0..<A.count {
            dic[B[i]] = i
        }
        for i in 0..<A.count {
            res[i] = dic[A[i]]!
        }
        
        return res
    }
}




