//
//  FindSmallestLetterGreaterThanTarget_744.swift
//  LeetCode_Swift
//
//  Created by Huni on 08/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class FindSmallestLetterGreaterThanTarget_744 {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        for c in letters {
            if c > target {
                return c
            }
        }
        return letters[0]
    }
}
