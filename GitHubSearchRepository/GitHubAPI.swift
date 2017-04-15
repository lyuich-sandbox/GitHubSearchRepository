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

        // GitHubRequestが要求する連想型
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
}
