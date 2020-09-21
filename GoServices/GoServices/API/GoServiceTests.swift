//
//  GoServiceTests.swift
//  GoServicesTests
//
//  Created by Ashish Jindal on 10/12/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

import XCTest
@testable import GoServices

class GoServiceTests: XCTestCase {
    func testContactListRequest() {
        let mockAPI = GoServiceMock()
        _ = mockAPI.fetchContactsList(completion: { _ in
            
        })
    }
}
