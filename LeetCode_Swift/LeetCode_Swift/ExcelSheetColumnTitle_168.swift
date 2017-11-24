//
//  ExcelSheetColumnTitle_168.swift
//  LeetCode_Swift
//
//  Created by Huni on 24/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ExcelSheetColumnTitle_168 {
    func convertToTitle(_ n: Int) -> String {
        
        var num = n
        var res = ""
        while num > 0 {
            res.insert(Character(UnicodeScalar((num - 1 ) % 26 + 65)!), at: res.startIndex)
            num = (num - 1) / 26
        }
        return res
    }
}
