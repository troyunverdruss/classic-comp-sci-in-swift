//
//  chapter1.swift
//  Classic Computer Science Swift
//
//  Created by Troy Unverdruss on 9/4/18.
//  Copyright © 2018 Troy Unverdruss. All rights reserved.
//

import Foundation
//import CocoaLumberjack

class Chapter1 {
    var fibMemo: [UInt: UInt] = [0: 0, 1: 1]

    func run() -> Void {
        let v1 = fib1(n: 2)
//        DDLogInfo("fib1: \(v1)")
        
        let v3 = fib3(n: 2)
        print(v3)
    }

    func fib1(n: UInt) -> UInt {
        return fib1(n: n - 1) + fib1(n: n-2)
    }
    
    func fib2(n: UInt) -> UInt {
        if (n < 2) {
            return n
        }
        return fib1(n: n - 1) + fib1(n: n-2)
    }
    
    func fib3(n: UInt) -> UInt {
        if let result = fibMemo[n] {
            return result
        } else {
            fibMemo[n] = fib3(n: n - 1) + fib3(n: n - 2)
        }
        return fibMemo[n]!
    }
}
