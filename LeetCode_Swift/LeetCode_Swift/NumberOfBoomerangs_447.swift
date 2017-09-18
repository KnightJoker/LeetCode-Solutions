//
//  NumberOfBoomerangs_447.swift
//  LeetCode_Swift
//
//  Created by Huni on 18/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class NumberOfBoomerangs_447 {
    func numberOfBoomerangs(_ points: [[Int]]) -> Int {

        func getDistance(_ a: [Int], _ b: [Int]) -> Int {
            return (a[0] - b[0]) * (a[0] - b[0]) + (a[1] - b[1]) * (a[1] - b[1])
        }
        
        var dict = [Int : Int]()
        var res = 0
        
        for i in 0..<points.count {
            for j in 0..<points.count {
                if i == j { continue }
                let distance = getDistance(points[i], points[j])
                dict[distance] = (dict[distance] ?? 0 ) + 1
            }
            
            for val in dict.values {
                res += val * (val - 1)
            }
            
            dict.removeAll()
        }
        return res

    }
}
