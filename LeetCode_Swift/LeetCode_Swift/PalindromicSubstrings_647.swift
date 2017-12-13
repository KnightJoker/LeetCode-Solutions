//
//  PalindromicSubstrings_647.swift
//  LeetCode_Swift
//
//  Created by Huni on 12/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class PalindromicSubstrings_647 {
    func countSubstrings(_ s: String) -> Int {
        
        if s.characters.count == 0 {
            return 0
        }
        var count = 0,sArray = Array(s.characters)
        
        func extendPalindrome(_ s:Array<Character>,_ left:Int,_ right:Int) {
            var left = left,right = right
            while left >= 0 && right < s.count && s[left] == s[right] {
                count += 1
                left -= 1
                right += 1
            }
        }
        
        for i in 0..<sArray.count {
            extendPalindrome(sArray, i, i)
            extendPalindrome(sArray, i, i + 1)
        }
        return count
    }
    
}

/*
 
 func optimalDivision(_ nums: [Int]) -> String {
 let temp = nums.sorted { $0>$1 }
 var result:String = "\(nums[0])"
 if nums.count < 3 {
 if nums.count < 2 {
 return "\(nums[0])"
 }
 result.append("/\(nums[1])")
 return result
 }
 result += "/(\(nums[1])"
 for i in 2..<nums.count {
 result.append("/\(nums[i])")
 }
 result += ")"
 return result
 }
 
 */
