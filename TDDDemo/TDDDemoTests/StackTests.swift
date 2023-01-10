//
//  StackTests.swift
//  TDDDemoTests
//
//  Created by BKS-GGS on 09/01/23.
//

import XCTest
@testable import TDDDemo

final class StackTests: XCTestCase {

    var stackObj:Stack?
    override func setUpWithError() throws {
        
        stackObj = Stack()
    }

    func testPush() {
        
        stackObj?.push(items: 5)
        stackObj?.push(items: 6)
        XCTAssertEqual((stackObj?.array.count)!, 2)
        
    }
    
    func testPop() {
        stackObj?.push(items: 8)
        stackObj?.push(items: 9)
        XCTAssertEqual((stackObj?.pop())!, 9)

    }
    
    func testPeek() {
        stackObj?.push(items:12)
        stackObj?.push(items: 20)
        XCTAssertEqual((stackObj?.peek())!,20)
        
    }
    
    override func tearDownWithError() throws {
      
        stackObj = nil
    }

   

}
