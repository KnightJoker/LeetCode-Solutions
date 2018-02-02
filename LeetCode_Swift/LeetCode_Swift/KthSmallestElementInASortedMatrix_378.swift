//
//  KthSmallestElementInASortedMatrix_378.swift
//  LeetCode_Swift
//
//  Created by Huni on 02/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class KthSmallestElementInASortedMatrix_378 {
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        
        var res = Array<Int>()
        
        for mat in matrix {
            for m in mat {
                res.append(m)
            }
        }
        
        let sort = res.sorted()
        
        return sort[k - 1]
    }
}
