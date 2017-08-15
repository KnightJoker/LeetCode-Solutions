//
//  IntersectionOfTwoArraysII_350.swift
//  LeetCode_Swift
//
//  Created by Huni on 15/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class IntersectionOfTwoArraysII_350 {

    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        let nums1 = nums1.sorted()
        let nums2 = nums2.sorted()
        var returnNums = [Int]()
        var i = 0,j = 0
        while i < nums1.count && j < nums2.count {
            if nums1[i] == nums2[j] {
                returnNums.append(nums1[i])
                i += 1
                j += 1
            } else if nums1[i] < nums2[j] {
                i += 1
            } else {
                j += 1
            }
        }
        
        return returnNums
    }
}
