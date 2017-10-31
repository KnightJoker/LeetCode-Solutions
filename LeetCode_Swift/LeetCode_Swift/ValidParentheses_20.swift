//
//  ValidParentheses_20.swift
//  LeetCode_Swift
//
//  Created by Huni on 31/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ValidParentheses_20 {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        
        for char in s {
            if char == "(" || char == "[" || char == "{" {
                stack.append(char)
            } else if char == ")" {
                guard stack.count != 0 && stack.removeLast() == "(" else {
                    return false
                }
            } else if char == "]" {
                guard stack.count != 0 && stack.removeLast() == "[" else {
                    return false
                }
            } else if char == "}" {
                guard stack.count != 0 && stack.removeLast() == "{" else {
                    return false
                }
            }
        }
        
        return stack.count == 0
    }
    
}
