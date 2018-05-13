//
//  SwiftyPaylikeTests.swift
//  SwiftyPaylikeTests
//
//  Created by Simon Riis Olesen on 12/05/2018.
//  Copyright © 2018 SwiftyPaylike. All rights reserved.
//

import XCTest
@testable import SwiftyPaylike

class SwiftyPaylikeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let handler = PaylikeHandler(paylikePublicKey: "")
        
        let card = Card(cardNumber: "4100000000000000", cardExpiryMonth: 05, cardExpiryYear: 22, cardCode: 123)
        
        let cardPayment = CardPayment(currency: "DKK", amount: 1000, card: card)
        
        handler.pay(cardPayment: cardPayment) { (data) in
            print(data)
        }
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
   
    
}
