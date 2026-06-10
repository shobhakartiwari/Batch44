//
//  Batch44Tests.swift
//  Batch44Tests
//
//  Created by Shobhakar Tiwari on 5/19/26.
//

import XCTest
@testable import Batch44

final class Batch44Tests: XCTestCase {
    var objCalculator: CalculatorProtocol?
    
    override func setUpWithError() throws {
        objCalculator = Calculator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        objCalculator = nil
    }
    
    func testSum() {
        let result = objCalculator?.sum(n1: 1, n2: 2)
        // 3 --- success
        // 4 --- failed
        XCTAssertEqual(result, 3)
    }
    
    func testSumForOptionalValue() {
        let result = objCalculator?.sum(n1: 1, n2: nil)
        XCTAssertEqual(result, 0)
    }
    
    func testMultiplication() {
        let result = objCalculator?.mul(n1: 10, n2: 20)
        XCTAssertEqual(result, 200)
    }
    
    func testSubtract() {
        let result = objCalculator?.sub(n1: 1, n2: 2)
        XCTAssertEqual(result, -1)
    }
}

