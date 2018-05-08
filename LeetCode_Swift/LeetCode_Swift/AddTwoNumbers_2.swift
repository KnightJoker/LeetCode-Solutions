//
//  AddTwoNumbers_2.swift
//  LeetCode_Swift
//
//  Created by Huni on 08/05/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class AddTwoNumbers_2 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var result:ListNode?
        var resultp:ListNode?
        
        var l1p = l1
        var l2p = l2
        
        var carry = false
        
        while let p1 = l1p, let p2 = l2p {
            
            let num = AddTwoNumbers_2.handleCarry(p1.val + p2.val, carry: &carry)
            
            let node = ListNode(num)
            
            if result == nil {
                result = node
                resultp = node
            } else {
                resultp?.next = node
                resultp = node
            }
            
            l1p = l1p?.next
            l2p = l2p?.next
        }
        
        if l1p == nil {
            while let p2 = l2p {
                
                let num = AddTwoNumbers_2.handleCarry(p2.val, carry: &carry)
                
                p2.val = num
                
                resultp?.next = p2
                resultp = p2
                
                l2p = l2p?.next
            }
        } else if l2p == nil {
            while let p1 = l1p {
                
                let num = AddTwoNumbers_2.handleCarry(p1.val, carry: &carry)
                
                p1.val = num
                
                resultp?.next = p1
                resultp = p1
                
                l1p = l1p?.next
            }
        }
        
        if carry {
            let tail = ListNode(1)
            resultp?.next = tail
        }
        
        return result
    }
    
    class func handleCarry(_ num:Int,  carry:inout Bool) -> Int {
        
        var n = num
        if carry {
            n += 1
        }
        if n > 9 {
            n -= 10
            carry = true
        } else {
            carry = false
        }
        
        return n
    }
}
