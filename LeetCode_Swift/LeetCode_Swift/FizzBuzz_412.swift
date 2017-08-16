//
//  FizzBuzz_412.swift
//  LeetCode_Swift
//
//  Created by Huni on 16/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class FizzBuzz_412 {

    func fizzBuzz(_ n: Int) -> [String] {
        var stringArray = [String]()
        var count = 1
        while count <= n {
            if count % 3 == 0 && count % 5 != 0{
                stringArray.append("Fizz")
            } else if count % 5 == 0 && count % 3 != 0{
                stringArray.append("Buzz")
            } else if count % 3 == 0 && count % 5 == 0 {
                stringArray.append("FizzBuzz")
            } else {
                stringArray.append(String(count))
            }
            count += 1
        }
        return stringArray
    }
}
