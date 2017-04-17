//
//  GitHubClient.swift
//  GitHubSearchRepository
//
//  Created by lyuich on 4/17/17.
//  Copyright © 2017 lyuich. All rights reserved.
//

import Foundation

class GitHubClient {
    private let session: URLSession = {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        return session
    }()
}
