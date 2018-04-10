//
//  TopKFrequentWords_692.swift
//  LeetCode_Swift
//
//  Created by Huni on 10/04/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class TopKFrequentWords_692 {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        
        var dic = Dictionary<String,Int>()
        var res = [String]()
        
        
        for word in words {
            dic[word] = (dic[word] ?? 0) + 1
        }
        
        var sort = dic.values.sorted{ (s1, s2) -> Bool in
            return s1 > s2
        }
        

        for i in 0..<k {
            for (k,v) in dic {
                if sort[i] == v && !res.contains(k) {
                    res.append(k)
                }
            }
        }
        
        if res.count < k {
            return res
        } else {
            
            var temp = [String]()
            for i in 0..<k {
                temp.append(res[i])
            }
            
            return temp
        }
      
    }
}
