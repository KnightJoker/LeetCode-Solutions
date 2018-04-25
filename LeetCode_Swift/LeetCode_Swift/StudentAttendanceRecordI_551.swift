//
//  StudentAttendanceRecordI_551.swift
//  LeetCode_Swift
//
//  Created by Huni on 21/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class StudentAttendanceRecordI_551 {
    func checkRecord(_ s: String) -> Bool {
        var count = 0
        for char in s {
            if char == "A" {
                count += 1
            }
        }
        
        if count > 1 || s.contains("LLL") {
            return false
        } else {
            return true
        }
    }
}
