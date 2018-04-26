//
//  GenerateParentheses_22.swift
//  LeetCode_Swift
//
//  Created by Huni on 19/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class GenerateParentheses_22 {
    func generateParenthesis(_ n: Int) -> [String] {
        
        var resArray = Array<String>()
        self.backTrack(resArray: &resArray, str: "", left: 0, right: 0, max: n)
        return resArray
    }
    
    private func backTrack(resArray:inout [String], str:String, left:Int, right:Int, max:Int) {
        if str.count == max * 2 {
            resArray.append(str)
            return
        }
        if left < max {
            self.backTrack(resArray: &resArray, str: str + "(", left: left + 1, right: right, max: max)
        }
        if right < left {
            self.backTrack(resArray: &resArray, str: str + ")", left: left, right: right + 1, max: max)
        }
        
    }
}



