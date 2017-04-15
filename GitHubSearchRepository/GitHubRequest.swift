//
//  GitHubRequest.swift
//  GitHubSearchRepository
//
//  Created by lyuich on 4/15/17.
//  Copyright © 2017 lyuich. All rights reserved.
//

import Foundation

protocol GitHubRequest {
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: Any? { get }
}

extension GitHubRequest {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
}
