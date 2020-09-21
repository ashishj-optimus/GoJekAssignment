//
//  GoServiceMock.swift
//  GoServicesTests
//
//  Created by Ashish Jindal on 10/11/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

import Foundation

public enum RequestError: Error, Equatable {
    case mockError(error: String)
}

public class GoServiceMock: ServicesAPI {
    let contactList: Result<[Contact], Error>?
    let contactDetail: Result<ContactDetail, Error>?
    
    public init(contactList: Result<[Contact], Error>? = nil,
                contactDetail: Result<ContactDetail, Error>? = nil) {
        self.contactList = contactList
        self.contactDetail = contactDetail
    }
    
    public func fetchContactsList(completion: @escaping (Result<[Contact], Error>) -> Void) {
        if let contacts = contactList {
            completion(contacts)
        }
    }
    
    public func fetchContactDetails(id: Int, completion: @escaping (Result<ContactDetail, Error>) -> Void) {
        if let contactDetail = contactDetail {
            completion(contactDetail)
        }
    }
    
    public func updateContactDetails(parameters: AddEditContactRequestParameters, completion: @escaping (Result<Bool, Error>) -> Void) {
    }
    
    public func addContactDetails(parameters: AddEditContactRequestParameters, completion: @escaping (Result<Bool, Error>) -> Void) {
    }
}
