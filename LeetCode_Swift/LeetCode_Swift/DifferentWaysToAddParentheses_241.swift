//
//  DifferentWaysToAddParentheses_241.swift
//  LeetCode_Swift
//
//  Created by Huni on 01/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class DifferentWaysToAddParentheses_241 {
    func diffWaysToCompute(_ input: String) -> [Int] {
        
        var res = Array<Int>()
        
        let inputA = Array(input.characters)
        
        for i in 0..<inputA.count {
            let c = inputA[i]
            if c == "+" || c == "-" || c == "*" {
                let indexL = input.index(input.startIndex, offsetBy: i)
                let lv = input[..<indexL]
                let indexR = input.index(input.startIndex, offsetBy: i + 1)
                let rv = input[indexR...]
                
                var lefts = self.diffWaysToCompute(String(lv))
                var rights = self.diffWaysToCompute(String(rv))
                
                for j in 0..<lefts.count {
                    for k in 0..<rights.count {
                        var temp = 0
                        if c == "+" {
                            temp = lefts[j] + rights[k]
                        }
                        if c == "-" {
                            temp = lefts[j] - rights[k]
                        }
                        if c == "*" {
                            temp = lefts[j] * rights[k]
                        }
                        res.append(temp)
                    }
                }
                
            }
        }
        
        if res.count == 0 {
            res.append(Int(input)!)
        }
        
        return res
    }
}


