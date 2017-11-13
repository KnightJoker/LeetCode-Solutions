//
//  PalindromeLinkedList_234.swift
//  LeetCode_Swift
//
//  Created by Huni on 13/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class PalindromeLinkedList_234 {
    func isPalindrome(_ head: ListNode?) -> Bool {
        
//        guard let head = head else {
//            return false
//        }
        
        var resArray = Array<Int>()
        var list = head
//        func traverseList(_ head: ListNode?) {
//            if head == nil {
//                return
//            }
//            resArray.append((head?.val)!)
//            traverseList(head?.next)
//        }
//
//        traverseList(head)
        while list != nil {
            resArray.append((list?.val)!)
            list = list?.next
        }
        
        var left = 0, right = resArray.count - 1
        while left < right {
            if resArray[left] != resArray[right] {
                return false
            }
            left += 1
            right -= 1
        }
        return true
    }
}
