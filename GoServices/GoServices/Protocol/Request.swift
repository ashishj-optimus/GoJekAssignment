//
//  Request.swift
//  GoServices
//
//  Created by Ashish Jindal on 10/8/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

import Foundation

public enum RequestHTTPMethod: String {
    case GET = "get"
    case POST = "post"
    case PUT = "put"
}

public protocol Request {
    var url: URL { get }
    var httpMethod: RequestHTTPMethod { get }
    var bodyParameters: [String:String]? { get }
}
