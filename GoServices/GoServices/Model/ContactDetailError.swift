//
//  ContactDetailError.swift
//  GoServices
//
//  Created by Ashish Jindal on 10/12/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

import Foundation

public struct ContactDetailError: Error, Codable {
    public var errors: [String]
}
