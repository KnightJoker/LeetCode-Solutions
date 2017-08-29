//
//  SumOfTwoIntegers_371.swift
//  LeetCode_Swift
//
//  Created by Huni on 28/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class SumOfTwoIntegers_371 {

    func getSum(_ a: Int, _ b: Int) -> Int {
        if a == 0 {
            return b
        }
        let x = a ^ b
        let c = (a & b) << 1
        return self.getSum(_: c ,_: x)
    }
}



