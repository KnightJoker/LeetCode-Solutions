//
//  QueueReconstructionByHeight_406.swift
//  LeetCode_Swift
//
//  Created by Huni on 11/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class QueueReconstructionByHeight_406 {
    func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
        var tupled = [(Int, Int)]()
        for p in people {
            let t = (p[0], p[1])
            tupled.append(t)
        }
        let sortedTuples = tupled.sorted { $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 > $1.0 }
        var result = [[Int]]()
        for t in sortedTuples {
            let iToInsert = t.1
            let arr = [t.0, t.1]
            result.insert(arr, at: iToInsert)
        }
        return result
    }
}
