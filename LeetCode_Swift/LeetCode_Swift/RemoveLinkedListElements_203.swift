//
//  RemoveLinkedListElements_203.swift
//  LeetCode_Swift
//
//  Created by Huni on 08/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class RemoveLinkedListElements_203 {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return head
        }
        head?.next = removeElements(head?.next, val)
        if head?.val == val {
            return head?.next
        }
        return head
    }
}
