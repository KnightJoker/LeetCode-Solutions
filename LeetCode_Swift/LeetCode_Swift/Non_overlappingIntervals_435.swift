//
//  Non-overlappingIntervals_435.swift
//  LeetCode_Swift
//
//  Created by Huni on 2018/4/19.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class Non_overlappingIntervals_435 {
    func eraseOverlapIntervals(_ intervals: [Interval]) -> Int {
        
        var res = 0
        if intervals.count == 0 {
            return 0
        }
        let sort = intervals.sorted { (interval1, interval2) -> Bool in
            return interval1.end < interval2.end
        }
        var last = sort.first!
        for i in 1..<sort.count {
            if sort[i].start < last.end {
                res += 1
            } else {
                last = sort[i]
            }
        }
        return res
    }
}
