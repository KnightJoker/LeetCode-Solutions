//
//  CustomSortString_791.swift
//  LeetCode_Swift
//
//  Created by Huni on 27/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class CustomSortString_791 {
    func customSortString(_ S: String, _ T: String) -> String {
        
        let sArray = Array(S.characters)
        var tArray = Array(T.characters)
        
        
        var index = 0
        
        for i in 0..<sArray.count {
            for j in index..<tArray.count {
                if tArray[j] == sArray[i] {
                    tArray[j] = tArray[index]
                    tArray[index] = sArray[i]
                    index += 1
                }
            }
        }

        return String(tArray)
    }
}


