//
//  ComplexNumberMultiplication_537.swift
//  LeetCode_Swift
//
//  Created by Huni on 08/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ComplexNumberMultiplication_537 {
    func complexNumberMultiply(_ a: String, _ b: String) -> String {
        
        var aInt = 0,bInt = 0,cInt = 0,dInt = 0
        (aInt,bInt) = self.stringToint(a)
        (cInt,dInt) = self.stringToint(b)

        return String(aInt*cInt - bInt*dInt) + "+" + String(bInt*cInt + aInt*dInt) + "i"
    }
    
    func stringToint(_ str:String) -> (Int,Int) {
        var real = ""
        var vir = ""
        for (i,k) in str.enumerated() {
            if k == "+" {
                real = String(str[..<str.index(str.startIndex, offsetBy:i)])
                vir = String(str[str.index(str.startIndex, offsetBy: i + 1)..<str.index(before: str.endIndex)])
            }
        }
        return (Int(real)!,Int(vir)!)
    }
    
}
