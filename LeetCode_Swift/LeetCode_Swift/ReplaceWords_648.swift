//
//  ReplaceWords_648.swift
//  LeetCode_Swift
//
//  Created by Huni on 18/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class ReplaceWords_648 {
    func replaceWords(_ dict: [String], _ sentence: String) -> String {
        if (dict.count == 0) {return sentence}
        let rootSet = Set(dict)
        
        let words = sentence.characters.split(separator: " ").map(String.init)
        
        var res = [String]()
        for word in words {
            var tmp = ""
            for (_,c) in word.enumerated() {
                tmp.append(c)
                if (rootSet.contains(tmp)) {
                    break
                }
                
            }
            res.append(tmp)
        }
        return res.joined(separator:" ")
    }
    
}
