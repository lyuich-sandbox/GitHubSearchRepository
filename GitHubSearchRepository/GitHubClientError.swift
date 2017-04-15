//
//  GitHubClientError.swift
//  GitHubSearchRepository
//
//  Created by lyuich on 4/15/17.
//  Copyright © 2017 lyuich. All rights reserved.
//

enum GitHubClientError : Error {
    case connectionError(Error)
    case responseParseError(Error)
    case apiError(GitHubAPIError)
}
