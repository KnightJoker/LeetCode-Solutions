//
//  FractionAdditionAndSubtraction_592.swift
//  LeetCode_Swift
//
//  Created by Huni on 29/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class FractionAdditionAndSubtraction_592 {
    func gcd(_ a: Int, _ b: Int) -> Int {
        return (b == 0) ? a: gcd(b, a % b)
    }
    
    func fractionAddition(_ expression: String) -> String {
        var n = 0
        var d = 1
        var s = Array(expression)
        if s[0] != "-" {
            s.insert("+", at: 0)
        }
        var p = 0
        while p < s.count {
            var p1 = p + 1
            while s[p1] != "/" {
                p1 += 1
            }
            var p2 = p1 + 1
            while p2 < s.count && s[p2] != "+" && s[p2] != "-" {
                p2 += 1
            }
            
            let nn = Int(String(s[p+1..<p1]))!
            let dd = Int(String(s[p1+1..<p2]))!
            let g = gcd(d, dd)
            
            n = n * dd / g + (s[p] == "-" ? -1 : 1) * nn * d / g
            d *= dd / g
            p = p2
        }
        
        let g = gcd(abs(n), d)
        return String(n / g) + "/" + String(d / g)
    }
}


