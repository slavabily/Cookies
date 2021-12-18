//
//  main.swift
//  Cookies
//
//  Created by slava bily on 18.12.2021.
//

import Foundation

func cookies(k: Int, A: [Int]) -> Int {
    var arr = A.sorted()
    var iter = 0
    while arr.count > 1 {
        var minArr = [Int]()
        while minArr.count < 2 {
            if let min = arr.min() {
                if min < k {
                    arr.remove(at: arr.firstIndex(of: min)!)
                    minArr.append(min)
                } else {
                    return -1
                }
            }
        }
        print(minArr)
    }
    return -1
}

print(cookies(k: 6, A: [1, 2, 3, 9, 10, 12]))

