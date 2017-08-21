//
//  RemoveDuplicatesFromSortedList_83.swift
//  LeetCode_Swift
//
//  Created by Huni on 21/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class RemoveDuplicatesFromSortedList_83 {

    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
       
        guard let head = head else {
            return nil
        }
        var curt = head
        while (curt.next != nil) {
            if curt.val == curt.next?.val {
                self.removeList(curt.next)
            } else {
                curt = curt.next!
            }
        }
        
        return head
    }
    
    func removeList(_ node:ListNode?) {
        node?.next = node?.next?.next
        node?.val = (node?.next?.val)!
    }
    
}

