//
//  ValidPalindrome_125.swift
//  LeetCode_Swift
//
//  Created by Huni on 27/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ValidPalindrome_125 {
    func isPalindrome(_ s: String) -> Bool {
        return s.components(separatedBy: CharacterSet.alphanumerics.inverted).joined(separator: "").lowercased() == String(s.components(separatedBy: CharacterSet.alphanumerics.inverted).joined(separator: "").reversed()).lowercased()
    }
}
