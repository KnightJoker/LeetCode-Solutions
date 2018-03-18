//
//  OddEvenLinkedList_328.swift
//  LeetCode_Swift
//
//  Created by Huni on 18/03/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class OddEvenLinkedList_328 {
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        guard head != nil && head!.next != nil else {
            return head
        }
        
        let evenHead = head!.next
        var p = head
        var q = evenHead
        var isEndEven = true
        
        while q!.next != nil {
            let node = q!.next
            
            p!.next = node
            
            p = q
            q = node
            isEndEven = !isEndEven
        }
        
        if isEndEven {
            p!.next = evenHead
        } else {
            p!.next = nil
            q!.next = evenHead
        }
        
        return head
    }
}

