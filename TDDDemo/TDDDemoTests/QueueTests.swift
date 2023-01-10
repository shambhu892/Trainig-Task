//
//  QueueTests.swift
//  TDDDemoTests
//
//  Created by BKS-GGS on 09/01/23.
//

import XCTest
@testable import TDDDemo


final class QueueTests: XCTestCase {

    var queueObj:Queue?
    override func setUpWithError() throws {
      
        queueObj = Queue()
    }

    func testEnQueue() {
        
        queueObj?.enQueue(items: 10)
        queueObj?.enQueue(items: 5)
        queueObj?.enQueue(items: 23)
        XCTAssertEqual((queueObj?.array.count)!,3)
    }
    
    func testDequeu() {
        queueObj?.enQueue(items: 12)
        queueObj?.enQueue(items: 5)
        queueObj?.enQueue(items: 6)
        queueObj?.deQueue()
        XCTAssertEqual((queueObj?.array.count)!,2)
    }
    
    func testFront() {
        queueObj?.enQueue(items: 12)
        queueObj?.enQueue(items: 5)
        queueObj?.enQueue(items: 6)
        XCTAssertEqual((queueObj?.front())!,12)
    }
    
    func testRear() {
        queueObj?.enQueue(items: 4)
        queueObj?.enQueue(items: 8)
        queueObj?.enQueue(items: 10)
        XCTAssertEqual((queueObj?.rear())!,10)
    }
    
    override func tearDownWithError() throws {
      
    }

    

}
