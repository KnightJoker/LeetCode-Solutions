//
//  NextGreaterElementI_496.swift
//  LeetCode_Swift
//
//  Created by Huni on 25/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class NextGreaterElementI_496 {

    func nextGreaterElement(_ findNums: [Int], _ nums: [Int]) -> [Int] {
        
        var returnArray = Array<Int>()
        var dic = Dictionary<Int, Int>()
        
        for findNum in findNums {
            for num in nums {
                if findNum == num {
                    var tempIndex = nums.index(of: num)
                    while tempIndex! < nums.count {
                        if nums[tempIndex!] > num {

                            dic[findNums.index(of: num)!] = nums[tempIndex!]
                            break
                        }
                        tempIndex = tempIndex! + 1
                    }
                }
            }

        }
        
        var i = 0
        while i < findNums.count {
            returnArray.append(-1)
            i += 1
        }
        
        for (a,b) in dic {
            returnArray[a] = b
        }

        return returnArray
    }
}

