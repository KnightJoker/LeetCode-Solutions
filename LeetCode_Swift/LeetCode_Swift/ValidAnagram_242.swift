//
//  ValidAnagram_242.swift
//  LeetCode_Swift
//
//  Created by Huni on 11/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class ValidAnagram_242 {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        return self.getArrayWithString(s) == self.getArrayWithString(t)
    }
    
    func getArrayWithString(_ s:String) -> Array<Character> {
        
        var array = [Character]()
        
        for (_,char) in s.characters.enumerated() {
            array.append(char)
        }
        
        return array.sorted()
    }
}


