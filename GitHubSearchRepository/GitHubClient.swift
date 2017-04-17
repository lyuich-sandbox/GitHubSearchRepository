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

    func send<Request : GitHubRequest>(request: Request, completion: (Result<Request.Response, GitHubClientError>) -> Void) {
        let urlRequest = request.buildURLRequest()
        let task = session.dataTask(with: urlRequest) {
            data, response, error in

        }
        
        task.resume()
    }
}
