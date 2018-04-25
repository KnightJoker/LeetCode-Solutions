//
//  ValidPalindromeII_680.swift
//  LeetCode_Swift
//
//  Created by Huni on 06/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ValidPalindromeII_680 {
    
//    func getArrayWithString(_ s:String) -> Array<Character> {
//        var array = [Character]()
//        for char in s {
//            array.append(char)
//        }
//        return array.sorted()
//    }
//
//    func validPalindrome(_ s: String) -> Bool {
//
//
//        var s = s
//        let rev = String(s.reversed())
//        if self.getArrayWithString(s) == self.getArrayWithString(rev) {
//            return true
//        }
//        for char in s {
//
//            s.remove(at: s.index(of: char)!)
//            let revRemove = String(s.reversed())
//            if self.getArrayWithString(s) == self.getArrayWithString(revRemove) {
//                return true
//            } else {
//                s.insert(char, at: s.index(of: char)!)
//            }
//        }
//        return false
//    }
    func isPalindrome(chars: ArraySlice<UInt32>) -> Bool {
        var left = chars.startIndex
        var right = chars.endIndex - 1
        while left < right {
            if chars[left] != chars[right] {
                return false
            }
            left += 1
            right -= 1
        }
        return true
    }
    
    func validPalindrome(_ s: String) -> Bool {
        var chars = Array(s.unicodeScalars.map{$0.value})
        var left = 0
        var right = s.count - 1
        while left < right {
            if chars[left] != chars[right] {
                return isPalindrome(chars: chars[left + 1...right]) || isPalindrome(chars: chars[left...right - 1])
            }
            left += 1
            right -= 1
        }
        return true
    }
}
