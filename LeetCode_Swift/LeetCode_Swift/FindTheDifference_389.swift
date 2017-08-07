//
//  FindTheDifference_389.swift
//  LeetCode_Swift
//
//  Created by Huni on 04/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class FindTheDifference_389 {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        
        var tt = t,ss = s
        for (_,charA) in t.characters.enumerated() {

            for (_,charB) in s.characters.enumerated() {

                if charA == charB {
                    let tempA = tt.characters.index(of: charA)
                    tt.remove(at: tempA!)
                    let tempB = ss.characters.index(of: charB)
                    ss.remove(at: tempB!)
                    return (self .findTheDifference(ss, tt))
                }
            }
        }
    
        return tt.characters.first!
    }
}
