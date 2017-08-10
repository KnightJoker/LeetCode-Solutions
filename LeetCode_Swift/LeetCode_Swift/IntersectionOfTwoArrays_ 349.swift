//
//  IntersectionOfTwoArrays_ 349.swift
//  LeetCode_Swift
//
//  Created by Huni on 10/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class IntersectionOfTwoArrays_349 {

    
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        return Array(Set(nums1).intersection(Set(nums2)))
    }
}
