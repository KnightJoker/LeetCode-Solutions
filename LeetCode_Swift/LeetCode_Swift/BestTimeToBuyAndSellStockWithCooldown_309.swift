//
//  BestTimeToBuyAndSellStockWithCooldown_309.swift
//  LeetCode_Swift
//
//  Created by Huni on 08/04/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class BestTimeToBuyAndSellStockWithCooldown_309 {
    func maxProfit(_ prices: [Int]) -> Int {
        let len = prices.count
        guard len > 0 else {return 0}
        
        var rest = Array(repeating: 0, count : len + 1)
        var hold = Array(repeating: 0, count : len + 1)
        var sold = Array(repeating: 0, count : len + 1)
        
        rest[0] = 0 ; hold[0] = Int.min ; sold[0] = 0
        
        for i in 1 ..< len + 1 {
            rest[i] = max(rest[i - 1], sold[i - 1])
            hold[i] = max(hold[i - 1], rest[i - 1] - prices[i - 1])
            sold[i] = hold[i - 1] + prices[i - 1]
        }
        
        return max(sold[len], rest[len])
        
    }
}
