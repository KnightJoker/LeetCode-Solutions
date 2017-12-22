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
        var res = [ListNode](repeating: ListNode(0), count: k)
        var count = 0
        while curr != nil {
            count += 1
            curr = curr?.next
        }
        var node = root
        var m = count / k , p = count % k

//        for i in 0..<k {
//            res[i] = node!
//            var cur = (p-=1) > 0 ? m + 1:m
//
//        }

        return res
    }
}



