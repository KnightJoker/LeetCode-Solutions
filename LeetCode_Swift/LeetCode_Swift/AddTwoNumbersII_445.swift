//
//  AddTwoNumbersII_445.swift
//  LeetCode_Swift
//
//  Created by Huni on 26/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class AddTwoNumbersII_445 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let list1 = l1?.reverse()
        let list2 = l2?.reverse()
        
        var long: ListNode?
        var short: ListNode?
        if list1!.length >= list2!.length {
            long = list1
            short = list2
        } else {
            long = list2
            short = list1
        }
        
        let head = long
        var tail = head
        
        var increment: Int = 0
        while let l = long {
            if short == nil && increment == 0 {
                return head?.reverse()
            }
            
            let val = l.val + (short?.val ?? 0) + increment
            l.val = val % 10
            increment = val / 10
            
            tail = long
            long = l.next
            short = short?.next
        }
        
        if increment > 0 {
            let newNode = ListNode(increment)
            tail?.next = newNode
        }
        
        return head?.reverse()
    }
}

extension ListNode {
    var length: UInt {
        var head: ListNode? = self
        var length: UInt = 0
        while let h = head {
            length += 1
            head = h.next
        }
        return length
    }
    
    func reverse() -> ListNode {
        var prev: ListNode? = nil
        var cur: ListNode? = self
        while let c = cur {
            let next = c.next
            c.next = prev
            prev = cur
            cur = next
        }
        return prev!
    }
}
