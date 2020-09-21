//
//  ContactDetailRequest.swift
//  GoServices
//
//  Created by Ashish Jindal on 10/10/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

import Foundation

public struct ContactDetailRequest: Request {
    let id: Int
    
    public init(id: Int) {
        self.id = id
    }
    public let httpMethod = RequestHTTPMethod.GET
    public var url: URL {
        let urlString = "http://gojek-contacts-app.herokuapp.com/contacts/\(id).json"
        guard let contactsURL = URL(string: urlString) else {
            fatalError("Could not construct URL")
        }
        return contactsURL
    }
    
    public var bodyParameters: [String : String]? {
        return nil
    }
}
