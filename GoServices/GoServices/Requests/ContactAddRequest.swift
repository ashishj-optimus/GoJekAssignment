//
//  ContactAddRequest.swift
//  GoServices
//
//  Created by Ashish Jindal on 10/12/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

import Foundation

public struct ContactAddRequest: Request {
    let params: AddEditContactRequestParameters
    
    public init(params: AddEditContactRequestParameters) {
        self.params = params
    }
    public let httpMethod = RequestHTTPMethod.POST
    public var url: URL {
        let urlString = "http://gojek-contacts-app.herokuapp.com/contacts.json"
        guard let url = URL(string: urlString) else {
            fatalError("Could not construct URL")
        }
        return url
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
