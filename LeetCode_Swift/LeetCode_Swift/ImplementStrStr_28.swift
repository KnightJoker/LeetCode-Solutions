//
//  ImplementStrStr().swift
//  LeetCode_Swift
//
//  Created by Huni on 23/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ImplementStrStr_28 {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        let hayArray = Array(haystack.characters)
        let needleArray = Array(needle.characters)
        
        for i in 0... {
            for j in 0... {
                if j == needleArray.count {
                    return i
                }
                if i + j == hayArray.count {
                    return -1
                }
                if needleArray[j] != hayArray[i + j] {
                    break
                }
            }
        }
        
        return 0
    }
}

