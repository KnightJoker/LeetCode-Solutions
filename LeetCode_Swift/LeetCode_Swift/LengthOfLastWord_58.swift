//
//  LengthOfLastWord_58.swift
//  LeetCode_Swift
//
//  Created by Huni on 07/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class LengthOfLastWord_58 {
    func lengthOfLastWord(_ s: String) -> Int {
        var sArray = s.components(separatedBy: " ")
        while (sArray.last?.isEmpty)! && sArray.count != 1 {
            sArray.remove(at: sArray.count - 1)
        }
        return (sArray.last?.characters.count)!
    }
}
