//
//  FriendCircles_547.swift
//  LeetCode_Swift
//
//  Created by Huni on 26/02/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class FriendCircles_547 {
    func findCircleNum(_ M: [[Int]]) -> Int {
        guard !M.isEmpty || !M[0].isEmpty else { return 0 }
        
        var ans = 0
        var visited = Array(repeating: 0, count: M[0].count)
        
        func dfs(k: Int) {
            visited[k] = 1
            for i in 0..<M.count {
                if M[k][i] == 0 || visited[i] == 1 { continue }
                dfs(k: i)
            }
        }
        
        for i in 0..<M.count {
            if visited[i] == 1 { continue }
            dfs(k: i)
            ans += 1
        }
        return ans
    }
}
