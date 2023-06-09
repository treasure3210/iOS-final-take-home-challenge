//
//  Endpoint.swift
//  ios-final-take-home-challenge
//
//  Created by Derek Kim on 2023-04-14.
//

import Foundation

// Protocol of Endpoint which newly created endpoints will conform to
protocol Endpoint {
    var baseURL: String { get }
    var path: String { get }
    var httpMethod: HttpMethod { get }
    var headers: [String: String] { get }
    var body: Data? { get }
}

extension Endpoint {
    // Mockup baseURL
    var baseURL: String {
        return "https://api.example.com"
    }
    
    var defaultHeaders: [String: String] {
        var headers: [String: String] = [:]
        // Assuming we have a valid JWT token - since this is a mockup example, custom jwt token is set as UserDefault in SceneDelegate as default
        if let token = UserDefaults.standard.string(forKey: "authenticationAPI") {
            headers["Authorization"] = "Bearer \(token)"
        }
        return headers
    }
}

