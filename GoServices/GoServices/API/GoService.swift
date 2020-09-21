//
//  GoService.swift
//  GoServices
//
//  Created by Ashish Jindal on 10/8/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

import Foundation

public struct GoService: ServicesAPI {
            
    public init() {}
    var session = URLSession.shared
    
    public func fetchContactsList(completion: @escaping (Result<[Contact], Error>) -> Void) {
        let contactRequest = ContactRequest()
        let url = contactRequest.url
        var request = URLRequest(url: url)
        let httpMethod: String = contactRequest.httpMethod.rawValue
        request.httpMethod = httpMethod
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        session.dataTask(with: request) { (data, response, error) in
            if let _error = error {
                completion(.failure(_error))

            } else if let _data = data {
                do {
                    let decoder = JSONDecoder()
                    let contacts = try decoder.decode([Contact].self, from: _data)
                    completion(.success(contacts))
                } catch let err {
                    completion(.failure(err))
                }
            }
        }.resume()
    }
    
    public func fetchContactDetails(id: Int, completion: @escaping (Result<ContactDetail, Error>) -> Void) {
        let detailRequest = ContactDetailRequest(id: id)
        let url = detailRequest.url
        var request = URLRequest(url: url)
        let httpMethod: String = detailRequest.httpMethod.rawValue
        request.httpMethod = httpMethod
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        session.dataTask(with: request) { (data, response, error) in
            if let _error = error {
                completion(.failure(_error))
                
            } else if let _data = data {
                do {
                    let decoder = JSONDecoder()
                    if let contactDetails = try? decoder.decode(ContactDetail.self, from: _data) {
                        completion(.success(contactDetails))
                    }
                    if let error = try? decoder.decode(ContactDetailError.self, from: _data) {
                        completion(.failure(error))
                    }
                }
            }
        }.resume()
    }
    
    public func updateContactDetails(parameters: AddEditContactRequestParameters, completion: @escaping (Result<Bool, Error>) -> Void) {
        let detailRequest = ContactEditRequest(params: parameters)
        let url = detailRequest.url
        var request = URLRequest(url: url)
        let httpMethod: String = detailRequest.httpMethod.rawValue
        request.httpMethod = httpMethod
        
        do {
            if let params = detailRequest.bodyParameters {
                request.httpBody = try JSONSerialization.data(withJSONObject: params, options: .prettyPrinted)
            }
         } catch let error {
             print(error.localizedDescription)
         }
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        session.dataTask(with: request) { (data, response, error) in
            if let _error = error {
                completion(.failure(_error))

            } else if let _data = data {
                do {
                    let decoder = JSONDecoder()
                    if let _ = try? decoder.decode(ContactDetail.self, from: _data) {
                        completion(.success(true))
                    }
                    if let error = try? decoder.decode(ContactDetailError.self, from: _data) {
                        completion(.failure(error))
                    }
                }
            }
        }.resume()
    }
    
    public func addContactDetails(parameters: AddEditContactRequestParameters, completion: @escaping (Result<Bool, Error>) -> Void) {
        let detailRequest = ContactAddRequest(params: parameters)
        let url = detailRequest.url
        var request = URLRequest(url: url)
        let httpMethod: String = detailRequest.httpMethod.rawValue
        request.httpMethod = httpMethod
        
        do {
            if let params = detailRequest.bodyParameters {
                request.httpBody = try JSONSerialization.data(withJSONObject: params, options: .prettyPrinted)
            }
         } catch let error {
             print(error.localizedDescription)
         }

        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        session.dataTask(with: request) { (data, response, error) in
            if let _error = error {
                completion(.failure(_error))

            } else if let _data = data {
                do {
                    let decoder = JSONDecoder()
                    if let _ = try? decoder.decode(ContactDetail.self, from: _data) {
                        completion(.success(true))
                    }
                    if let error = try? decoder.decode(ContactDetailError.self, from: _data) {
                        completion(.failure(error))
                    }
                }
            }
        }.resume()
    }
}
