//
//  ConstructTheRectangle_492.swift
//  LeetCode_Swift
//
//  Created by Huni on 07/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class ConstructTheRectangle_492 {
    func constructRectangle(_ area: Int) -> [Int] {
        
        if area == 0 { return [] }
        
        var w = Int(sqrt(Double(area)))
        while area % w != 0 {
            w -= 1
        }
        return [area / w, w]
    }
}
