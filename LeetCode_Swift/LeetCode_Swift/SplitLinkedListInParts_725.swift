//
//  SplitLinkedListInParts_725.swift
//  LeetCode_Swift
//
//  Created by Huni on 22/12/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class SplitLinkedListInParts_725 {
    func splitListToParts(_ root: ListNode?, _ k: Int) -> [ListNode?] {
        
        var curr = root
        var res = [ListNode?](repeating: nil, count: k)
        var count = 0
        while curr != nil {
            count += 1
            curr = curr?.next
        }
        var node = root
        var pre : ListNode?
        let n = count / k
        var i = 0,r = count % k
        while node != nil && i < k {
            res[i] = node!
            for _ in 0..<(n + (r > 0 ? 1 : 0)) {
                    pre = node
                    node = node?.next
                
            }
                pre?.next = nil

            i += 1
            r -= 1
        }

        return res
    }
}





