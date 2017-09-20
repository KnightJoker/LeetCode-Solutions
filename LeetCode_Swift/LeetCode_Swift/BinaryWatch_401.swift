//
//  BinaryWatch_401.swift
//  LeetCode_Swift
//
//  Created by Huni on 19/09/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

/*
        When you see the code,you will say MDZZ.hahahah~
 */

class BinaryWatch_401 {
    func readBinaryWatch(_ num: Int) -> [String] {
        let hours = [["0"],
                     ["1","2","4","8"],
                     ["3","5","6","9","10"],
                     ["7","11"]]
        let minutes = [["00"],
                       ["01","02","04","08","16","32"],
                       ["03","05","06","09","10","12","17","18","20","24","33","34","36","40","48"],
                       ["07","11","13","14","19","21","22","25","26","28","35","37","38","41","42","44","49","50","52","56"],
                       ["15","23","27","29","30","39","43","45","46","51","53","54","57","58"],
                       ["31","47","55","59"]]
        
        var array = Array<String>(),index = 0
        
        while index <= 3 && index <= num {
            if num - index <= 5 {
                for hour in hours[index] {
                    for minute in minutes[num - index] {
                        array.append(hour + ":" + minute)
                    }
                }
            }
            index += 1
        }
        return array
    }
}

