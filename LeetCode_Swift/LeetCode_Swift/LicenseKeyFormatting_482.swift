//
//  LicenseKeyFormatting_482.swift
//  LeetCode_Swift
//
//  Created by Huni on 09/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class LicenseKeyFormatting_482 {
    func licenseKeyFormatting(_ S: String, _ K: Int) -> String {
        
        
        let S = S.replacingOccurrences(of: "-", with: "")
        let s = S.uppercased()
        var sArray = Array(s.characters)
        let count = sArray.count
        var index = K
        while index < count {
            sArray.insert("-", at: (count - index))
            index += K
        }
        return String(sArray)
    }
}

