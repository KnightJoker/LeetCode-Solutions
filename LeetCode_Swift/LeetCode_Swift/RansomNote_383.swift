//
//  RansomNote_383.swift
//  LeetCode_Swift
//
//  Created by Huni on 09/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class RansomNote_383{

    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        
        if ransomNote == "" {
            return true
        } else {
            var magazineArray = self.getArrayWithString(magazine)
            let ransomNoteArray = self.getArrayWithString(ransomNote)
            var count = 0
            for (index,char) in ransomNoteArray.enumerated() {
                if magazineArray.contains(char) {
                    count += 1
                    magazineArray.remove(at: index)
                }
            }
            if count == ransomNoteArray.count {
                return true
            } else {
                return false
            }


        }
        
    }
    
    func getArrayWithString(_ s:String) -> Array<Character> {
        
        var array = [Character]()
        
        for (_,char) in s.characters.enumerated() {
            array.append(char)
        }
        
        return array.sorted()
    }

}
