//
//  MVVMTrainingTests.swift
//  MVVMTrainingTests
//
//  Created by BKS-GGS on 11/01/23.
//

import XCTest
@testable import MVVMTraining

final class MVVMTrainingTests: XCTestCase {
    
    var viewModel: NewsViewModel?
    
    override func setUpWithError() throws {
        
        viewModel = NewsViewModel()
    }
    
    func testGetNewsData() throws {
        let expectation = expectation(description: "Expecting News Url Response")
        viewModel?.newsData(completion: { result in
            XCTAssertNotNil(result)
            expectation.fulfill()
        })
        waitForExpectations(timeout: 5) { error in
            if let error = error {
                XCTFail("waitForExpectationsWithTimeout errored: \(error)")
            }
        }
    }
    func testGetCount() {
        let newsData1 = Hit(title: "Sachin Tendualkar", url: "Cricketer", points: 2)
        let newsData2 = Hit(title: "Hritik Roshan", url: "Actor", points: 5)
        let newsData3 = Hit(title: "Narendr Modi", url: "Plitician", points: 8)
        
        viewModel?.hitsArray?.append(newsData1)
        viewModel?.hitsArray?.append(newsData2)
        viewModel?.hitsArray?.append(newsData3)
        
        XCTAssertEqual(viewModel?.hitsArray?.count, 3)
        
    }
    
    func testTitle() {
        let newsData1 = Hit(title: "Sachin Tendualkar", url: "Cricketer", points: 2)
        let newsData2 = Hit(title: "Hritik Roshan", url: "Actor", points: 5)
        viewModel?.hitsArray?.append(newsData1)
        viewModel?.hitsArray?.append(newsData2)
        XCTAssertEqual(viewModel?.hitsArray?.first?.title, "Sachin Tendualkar")
        XCTAssertEqual(viewModel?.hitsArray?[1].title, "Hritik Roshan")

    }
    
    func testPoints() {
        let newsData1 = Hit(title: "Sachin Tendualkar", url: "Cricketer", points: 2)
        let newsData2 = Hit(title: "Hritik Roshan", url: "Actor", points: 5)
        viewModel?.hitsArray?.append(newsData1)
        viewModel?.hitsArray?.append(newsData2)
        XCTAssertEqual(viewModel?.hitsArray?.first?.points,2)
        XCTAssertEqual(viewModel?.hitsArray?[1].points,5)

    }
    
    override func tearDownWithError() throws {
        viewModel = nil
    }
}
