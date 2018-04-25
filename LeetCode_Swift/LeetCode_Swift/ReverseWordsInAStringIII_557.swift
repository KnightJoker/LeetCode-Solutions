//
//  ReverseWordsInAStringIII_557.swift
//  LeetCode_Swift
//
//  Created by Huni on 31/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ReverseWordsInAStringIII_557 {
    func reverseWords(_ s: String) -> String {
        
        let stringArray = s.components(separatedBy:" ")
        
        var resultArray = Array<String>()
        for str in stringArray {
            resultArray.append(String(str.reversed()))
        }
        
        return resultArray.joined(separator:" ")
    }
}
