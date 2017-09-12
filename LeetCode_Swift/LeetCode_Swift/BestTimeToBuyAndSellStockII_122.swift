//
//  BestTimeToBuyAndSellStockII_122.swift
//  LeetCode_Swift
//
//  Created by Huni on 12/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class BestTimeToBuyAndSellStockII_122 {
    func maxProfit(_ prices: [Int]) -> Int {
        // 贪心算法，1-4 和 1-2-3-4 结果其实一样
        var count = 0
        var index = 0
        
        while index < prices.count - 1 {
            if prices[index] < prices[index + 1] {
                count += prices[index + 1] - prices[index]
            }
            index += 1
        }
        return count
    }
}
