//
//  RedundantConnection_684.swift
//  LeetCode_Swift
//
//  Created by Huni on 03/04/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class RedundantConnection_684 {
    func findRedundantConnection(_ edges: [[Int]]) -> [Int] {
        var parent = Array(repeatElement(0, count: 2018))
        
        for i in 0..<parent.count {
            parent[i] = i
        }
        
        for edge in edges {
            let f = edge[0],t = edge[1]
            if find(&parent, f) == find(&parent, t) {
                return edge
            } else {
                parent[find(&parent, f)] = find(&parent, t)
            }
            
        }
        
        return [2]
    }
    
    private func find(_ parent:inout [Int],_ f:Int) -> Int {
        if f != parent[f] {
            parent[f] = find(&parent, parent[f])
        }
        return parent[f]
    }
}



