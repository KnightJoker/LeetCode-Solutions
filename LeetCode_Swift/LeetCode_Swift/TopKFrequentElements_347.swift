//
//  TopKFrequentElements_347.swift
//  LeetCode_Swift
//
//  Created by Huni on 26/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class TopKFrequentElements_347 {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dic = Dictionary<Int, Int>()
        var res = Set<Int>()
        for num in nums {
            dic[num] = (dic[num] ?? 0) + 1
        }
        
        let frequentArray = dic.values.sorted(){$0 > $1}
        
        for i in 0..<k {
            for (k,v) in dic {
                if frequentArray[i] == v {
                    res.insert(k)
                }
            }
        }
        return Array(res)
    }
}
