//
//  TransactionTests.swift
//  TransactionTests
//
//  Created by Sjors Provoost on 18/06/2019.
//  Copyright © 2019 Blockchain. Distributed under the MIT software
//  license, see the accompanying file LICENSE.md

import XCTest
@testable import LibWally

class TransctionTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFromHash() {
        let hash = ("0000000000000000000000000000000000000000000000000000000000000000")
        let tx = Transaction(hash)
        XCTAssertNotNil(tx)
        XCTAssertEqual(tx?.hash.hexString, hash)

        XCTAssertNil(Transaction("00")) // Wrong length
    }

    func testOutput() {
        let scriptPubKey = ScriptPubKey("76a914bef5a2f9a56a94aab12459f72ad9cf8cf19c7bbe88ac")!
        let output = TxOutput(scriptPubKey, 1000)
        XCTAssertNotNil(output)
        XCTAssertEqual(output.amount, 1000)
        XCTAssertEqual(output.scriptPubKey, scriptPubKey)
    }
}
