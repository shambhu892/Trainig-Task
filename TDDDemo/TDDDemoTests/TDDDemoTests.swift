//
//  TDDDemoTests.swift
//  TDDDemoTests
//
//  Created by BKS-GGS on 09/01/23.
//

import XCTest
@testable import TDDDemo

final class TDDDemoTests: XCTestCase {
    var calculatorObj:Calculator?
    override func setUpWithError() throws {
        
        calculatorObj = Calculator()
    }
    
    func testSumWithValidNumber() {
        let sumResult = calculatorObj?.sum(n1: 2, n2: 5)
       XCTAssertEqual(sumResult, 7)
       
    }
    
    func testSumWithNilValue() {
        let resultNil = calculatorObj?.sum(n1: nil, n2: nil)
        XCTAssertEqual(resultNil, nil)
    }
    func testSubWithValidNumber() {
        let subResult = calculatorObj?.sub(n1:5, n2: 2)
       XCTAssertEqual(subResult, 3)
    }
    func testSubWithNilValue() {
        let subResult = calculatorObj?.sub(n1:nil, n2: nil)
       XCTAssertEqual(subResult, nil)
    }
    
    func testMulWithValidNumber() {
        
        let mulResult = calculatorObj?.mul(n1: 2, n2: 3)
        XCTAssertEqual(mulResult, 6)
    }
    
    func testDivWithValidNumber() {
        
        let mulResult = calculatorObj?.divide(n1: 8, n2: 2)
        XCTAssertEqual(mulResult, 4)
    }
    
    func testDivWithNilNumber() {
        
        let mulResult = calculatorObj?.divide(n1: 8, n2: nil)
        XCTAssertEqual(mulResult, nil)
    }
    
    
    
    override func tearDownWithError() throws {
      
        calculatorObj = nil
    }

}
