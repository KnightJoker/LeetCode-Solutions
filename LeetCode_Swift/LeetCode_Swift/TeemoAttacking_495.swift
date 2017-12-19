//
//  TeemoAttacking_495.swift
//  LeetCode_Swift
//
//  Created by Huni on 19/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class TeemoAttacking_495 {
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
        
        if (timeSeries.count == 0 || duration == 0) {
              return 0
        }
        var count = 0,start = timeSeries[0], end = timeSeries[0] + duration
        for i in 1..<timeSeries.count {
            if timeSeries[i] > end {
                let temp = end - start
                count += temp
                start = timeSeries[i]
            }
            end = timeSeries[i] + duration
        }
        let temp = end - start
        count += temp
        return count
    }
}

