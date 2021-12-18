//
//  main.swift
//  Cookies
//
//  Created by slava bily on 18.12.2021.
//

import Foundation

func cookies(k: Int, A: [Int]) -> Int {
    var arr = A
    var iter = 0
    while arr.count > 1 {
        var minArr = [Int]()
        while minArr.count < 2 {
            if let min = arr.min() {
                if min < k {
                    arr.remove(at: arr.firstIndex(of: min)!)
                    minArr.append(min)
                } else {
                    return iter
                }
            }
        }
        print(minArr)
        let incrMin = minArr[0] + 2 * minArr[1]
        arr.insert(incrMin, at: 0)
        print(arr)
        iter += 1
    }
    return -1
}

print(cookies(k: 7, A: [1, 2, 3, 9, 10, 12]))

