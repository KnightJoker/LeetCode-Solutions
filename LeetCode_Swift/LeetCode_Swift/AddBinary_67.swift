//
//  AddBinary_67.swift
//  LeetCode_Swift
//
//  Created by Huni on 02/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class AddBinary_67 {
//    Runtime Error
//    func addBinary(_ a: String, _ b: String) -> String {
//
//        var aTen = 0,bTen = 0
//        for c in a {
//            aTen = aTen * 2 + Int("\(c)")!
//        }
//        for c in b {
//            bTen = bTen * 2 + Int("\(c)")!
//        }
//
//        return String(aTen + bTen,radix:2)
//    }
    
    func addBinary(_ a: String, _ b: String) -> String {
        var res = "",carry = 0
        var aIndex = a.count - 1,bIndex = b.count - 1
        var aArray = Array<Character>(a), bArray = Array<Character>(b)
        while aIndex >= 0 || bIndex >= 0 || carry == 1 {
            if aIndex >= 0 {
                carry += Int(String(aArray[aIndex])) ?? 0
                aIndex -= 1
            }
            if bIndex >= 0 {
                carry += Int(String(bArray[bIndex])) ?? 0
                bIndex -= 1
            }
            res = "\(carry % 2)" + res
            carry /= 2
        }
        return res
    }
}
