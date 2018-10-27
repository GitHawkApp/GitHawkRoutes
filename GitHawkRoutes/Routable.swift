//
//  Routable.swift
//  Freetime
//
//  Created by Ryan Nystrom on 10/7/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import Foundation

public protocol Routable {
    static func from(params: [String: String]) -> Self?
    var encoded: [String: String] { get }
    static var path: String { get }
}

public extension URL {
    public static func from<T: Routable>(githawk route: T) -> URL? {
        var components = URLComponents()
        components.scheme = "freetime"
        components.host = T.path
        components.queryItems = route.encoded.map(URLQueryItem.init)
        return components.url
    }
}
