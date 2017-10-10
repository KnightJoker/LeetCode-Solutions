//
//   MergeTwoSortedLists_21.swift
//  LeetCode_Swift
//
//  Created by Huni on 10/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class MergeTwoSortedLists_21 {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var l1 = l1,l2 = l2
        let returnList = ListNode(0)
        var node = returnList
        
        
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                node.next = l1
                l1 = l1!.next
            } else {
                node.next = l2
                l2 = l2!.next
            }
            node = node.next!
        }
        
        node.next = l1 ?? l2
        
        return returnList.next
    }
}

