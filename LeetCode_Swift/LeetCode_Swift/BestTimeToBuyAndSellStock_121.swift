//
//  BestTimeToBuyAndSellStock_121.swift
//  LeetCode_Swift
//
//  Created by Huni on 21/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation


public class BestTimeToBuyAndSellStock_121 {

    func maxProfit(_ prices: [Int]) -> Int {
        
        if (prices.count < 1) {
            return 0;
        }
        
        var temp = prices[0]
        var dif = 0
        var index = 1
        
        while index < prices.count {
            if prices[index] < temp {
                temp = prices[index]
            } else if prices[index] - temp > dif {
                dif = prices[index] - temp
            }
            index += 1
        }
        
        return dif
    }
}
