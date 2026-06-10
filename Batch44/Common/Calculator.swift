//
//  Calculator.swift
//  Batch44
//
//  Created by Shobhakar Tiwari on 6/8/26.
//

// Problem Statement : Design a calculator
// sum
// mul
// div
// sub

protocol CalculatorProtocol {
    func sum(n1: Int?, n2: Int?) -> Int
    func mul(n1: Int?, n2: Int?) -> Int
    func div(n1: Int?, n2: Int?) -> Double
    func sub(n1: Int?, n2: Int?) -> Int
}

struct Calculator: CalculatorProtocol {
    func sum(n1: Int?, n2: Int?) -> Int {
        guard let n1 = n1, let n2 = n2 else { return 0}
        return n1 + n2
    }
    
    func mul(n1: Int?, n2: Int?) -> Int {
        guard let n1 = n1, let n2 = n2 else { return 0}
        return n1 * n2
    }
    
    func div(n1: Int?, n2: Int?) -> Double {
        guard let n1 = n1, let n2 = n2 else { return 0}
        return Double(n1 / n2)
    }
    
    func sub(n1: Int?, n2: Int?) -> Int {
        guard let n1 = n1, let n2 = n2 else { return 0}
        return n1 - n2
    }
}
