//
//  ExclusiveTimeOfFunctions_636.swift
//  LeetCode_Swift
//
//  Created by Huni on 26/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class ExclusiveTimeOfFunctions_636 {
    func exclusiveTime(_ n: Int, _ logs: [String]) -> [Int] {
        var stack = [Int]()
        var pre = 0
        var res = Array(repeating: 0, count: n)
        
        for log in logs {
            
            let tokens = log.components(separatedBy: ":")
            
            let id = Int(tokens[0])!
            let act = tokens[1]
            let time = Int(tokens[2])!
            
            if act == "start" {
                
                if !stack.isEmpty {
                    
                    let top = stack[stack.count - 1]
                    res[top] += time - pre
                }
                
                stack.append(id)
                pre = time
                
            } else {
                
                res[stack.removeLast()] += time - pre + 1
                pre = time + 1
            }
        }
        
        return res
    }
}
