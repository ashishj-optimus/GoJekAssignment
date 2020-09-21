//
//  ContactDetail.swift
//  GoServices
//
//  Created by Ashish Jindal on 10/9/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

import Foundation

public struct ContactDetail: Codable {
    public var id: Int
    public var firstName: String
    public var lastName: String?
    public var email: String?
    public var phone: String?
    public var profilePic: String
    public var favorite: Bool
}

extension ContactDetail {
    enum CodingKeys: String, CodingKey {
        case id
        case favorite
        case email
        case firstName = "first_name"
        case lastName = "last_name"
        case phone = "phone_number"
        case profilePic = "profile_pic"
    }
}
