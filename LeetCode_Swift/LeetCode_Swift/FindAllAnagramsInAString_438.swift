//
//  FindAllAnagramsInAString_438.swift
//  LeetCode_Swift
//
//  Created by Huni on 30/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class FindAllAnagramsInAString_438 {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        let m = p.characters.count
        let n = s.characters.count
        var result = [Int]()
        if n < m {
            return result
        }
        var sArray = [Int]()
        var pArray = [Int]()
        let sUnicodeArray = Array(s.unicodeScalars)
        var sumP = 0
        var sumST = 0
        let aValue = Int(UnicodeScalar("a")!.value)
        
        for _ in 1...256 {
            sArray.append(0)
            pArray.append(0)
        }
        
        for u in p.unicodeScalars {
            pArray[Int(u.value) - aValue] += 1
        }
        for u in p.unicodeScalars {
            sumP += Int(u.value)
        }
        for u in sUnicodeArray[0..<m] {
            sumST += Int(u.value)
            sArray[Int(u.value) - aValue] += 1
        }
        for i in 0..<n-m {
            if sumP == sumST {
                if sArray == pArray {
                    result.append(i)
                }
            }
            sArray[Int(sUnicodeArray[i].value) - aValue] -= 1
            sArray[Int(sUnicodeArray[i+m].value) - aValue] += 1
            sumST = sumST - Int(sUnicodeArray[i].value) + Int(sUnicodeArray[i+m].value)
        }
        if sumP == sumST {
            if sArray == pArray {
                result.append(n-m)
            }
        }
        return result
    }
}

