//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs;
    }
    func add(_ arr: [Int]) -> Int {
        var sum = 0;
        for n in arr {
            sum += n
        }
        return sum
    }
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        let tup = (lhs.0 + rhs.0, lhs.1 + rhs.1)
        return tup
    }
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        let dic = ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
        return dic
    }
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs;
    }
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        let tup = (lhs.0 - rhs.0, lhs.1 - rhs.1)
        return tup
    }
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        let dic = ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
        return dic
    }
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs;
    }
    func multiply(_ arr: [Int]) -> Int {
        var product = 1;
        for n in arr {
            product *= n
        }
        return product
    }
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs;
    }
    
    func count(_ arr: [Int]) -> Int {
        return arr.count;
    }
    func avg(_ arr: [Int]) -> Int {
        var product = 0;
        for n in arr {
            product += n
        }
        return product / arr.count
    }
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var val = beg;
        for i in beg...args.count - 1 {
            val = op(val, args[i])
        }
        return val
    }
}
