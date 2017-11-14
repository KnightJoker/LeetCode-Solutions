//
//  ReverseInteger_7.swift
//  LeetCode_Swift
//
//  Created by Huni on 14/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ReverseInteger_7 {
    func reverse(_ x: Int) -> Int {

        if x < 0 {
            return Int("-" + String(String(abs(x)).reversed()))! < Int(Int32.min) ? 0 : Int("-" + String(String(abs(x)).reversed()))!
        }
        return Int(String(String(x).reversed()))! > Int(Int32.max) ? 0 : Int(String(String(x).reversed()))!
    }

}
