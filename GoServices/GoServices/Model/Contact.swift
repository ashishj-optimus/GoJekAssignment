//
//  Contact.swift
//  GoServices
//
//  Created by Ashish Jindal on 10/8/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

import Foundation

public struct Contact: Codable {
    public var id: Int
    public var firstName: String
    public var lastName: String?
    public var profilePic: String
    public var favorite: Bool
    public var profileDetailsLink: String?
}

extension Contact {
    enum CodingKeys: String, CodingKey {
        case id
        case favorite
        case firstName = "first_name"
        case lastName = "last_name"
        case profilePic = "profile_pic"
        case profileDetailsLink = "url"
    }
}
