//
//  chapter1.swift
//  Classic Computer Science Swift
//
//  Created by Troy Unverdruss on 9/4/18.
//  Copyright © 2018 Troy Unverdruss. All rights reserved.
//

import Foundation

class Chapter1 {
    func fib1(n: UInt) -> UInt {
        if (n < 2) {
            return n
        }
        return fib1(n: n - 1) + fib1(n: n-2)
    }
    
    func fib2()
}
