//
//  ReverseLinkedList_206.swift
//  LeetCode_Swift
//
//  Created by Huni on 16/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class ReverseLinkedList_206 {

    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let next = head?.next
        let res = self.reverseList(head?.next)
        
        next?.next = head
        head?.next = nil
        return res
        
    }
}
