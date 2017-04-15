//
//  GitHubAPI.swift
//  GitHubSearchRepository
//
//  Created by lyuich on 4/15/17.
//  Copyright © 2017 lyuich. All rights reserved.
//

final class GitHubAPI {
    struct SearchRepositories : GitHubRequest {
        let keyword: String

        typealias Response = SearchResponse<Repository>

        var method: HTTPMethod {
            return .get
        }

        var path: String {
            return "/search/repositories"
        }

        var parameters: Any? {
            return ["q": keyword]
        }
    }

    struct SearchUsers: GitHubRequest {
        let keyword: String

        typealias Response = SearchResponse<User>

        var method: HTTPMethod {
            return .get
        }

        var path: String {
            return "/search/users"
        }

        var parameters: Any? {
            return ["q": keyword]
        }
    }
}
