//
//  File.swift
//  GoServices
//
//  Created by Ashish Jindal on 10/12/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

import Foundation

public struct AddEditContactRequestParameters {
    public var id: Int?
    public var firstName: String?
    public var lastName: String?
    public var email: String?
    public var phone: String?
    public var profilePic: String?
    public var isFavorite: Bool
    
    public init(id: Int? = nil,
                firstName: String? = nil,
                lastName: String? = nil,
                email: String? = nil,
                phone: String? = nil,
                profilePic: String? = nil,
                isFavorite: Bool) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phone = phone
        self.profilePic = profilePic
        self.isFavorite = isFavorite
    }
}
