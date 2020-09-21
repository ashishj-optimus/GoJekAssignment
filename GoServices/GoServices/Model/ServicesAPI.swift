//
//  Model.swift
//  GoServices
//
//  Created by Ashish Jindal on 10/8/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

public protocol ServicesAPI {
    func fetchContactsList(completion: @escaping (Result<[Contact], Error>) -> Void)
    func fetchContactDetails(id: Int, completion: @escaping (Result<ContactDetail, Error>) -> Void)
    func updateContactDetails(parameters: AddEditContactRequestParameters, completion: @escaping (Result<Bool, Error>) -> Void)
    func addContactDetails(parameters: AddEditContactRequestParameters, completion: @escaping (Result<Bool, Error>) -> Void)
}


