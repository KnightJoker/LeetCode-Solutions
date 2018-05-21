//
//  ZigZagConversion_6.swift
//  LeetCode_Swift
//
//  Created by Huni on 21/05/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class ZigZagConversion_6 {
    func convert(_ s: String, _ numRows: Int) -> String {
        guard numRows < s.count else {
            return s
        }
        guard numRows > 1 else {
            return s
        }
        
        let string = Array(s)
        var newString = ""
        
        for row in 0..<numRows {
            
            var stringIndex = row
            
            while stringIndex < string.count {
                newString.append(string[stringIndex])
                
                if row >= 1, row < numRows-1 {
                    let diagonalIndex = stringIndex + 2*(numRows-1-row)
                    if diagonalIndex < string.count {
                        newString.append(string[diagonalIndex])
                    }
                }
                
                stringIndex += (numRows-1-row) + (numRows-2) + (row+1)
            }
        }
        
        return newString
    }
}
