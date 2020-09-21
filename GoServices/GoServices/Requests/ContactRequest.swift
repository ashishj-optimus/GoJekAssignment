//
//  ContactRequest.swift
//  GoServices
//
//  Created by Ashish Jindal on 10/8/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

import Foundation

public struct ContactRequest: Request {
    
    public init() {}
    public let httpMethod = RequestHTTPMethod.GET
    public var url: URL {
        guard let contactsURL = URL(string: "http://gojek-contacts-app.herokuapp.com/contacts.json") else {
            fatalError("Could not construct URL")
        }
        return contactsURL
    }
    
    public var bodyParameters: [String : String]? {
        return nil
    }
}
