//
//  ContactEditRequest.swift
//  GoServices
//
//  Created by Ashish Jindal on 10/10/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

import Foundation

public struct ContactEditRequest: Request {
    let params: AddEditContactRequestParameters
    
    public init(params: AddEditContactRequestParameters) {
        self.params = params
    }
    public let httpMethod = RequestHTTPMethod.PUT
    public var url: URL {
        guard let id = params.id else {
            fatalError("id should exist")
        }
        
        let urlString = "http://gojek-contacts-app.herokuapp.com/contacts/\(id).json"
        guard let contactsURL = URL(string: urlString) else {
            fatalError("Could not construct URL")
        }
        return contactsURL
    }
    
    public var bodyParameters: [String : String]? {
        var bodyParameters = [String: String]()
        bodyParameters["first_name"] = params.firstName
        bodyParameters["last_name"] = params.lastName
        bodyParameters["email"] = params.email
        bodyParameters["phone_number"] = params.phone
        bodyParameters["favorite"] = params.isFavorite.description
        return bodyParameters
        
    }
}
