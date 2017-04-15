//
//  GitHubAPIError.swift
//  GitHubSearchRepository
//
//  Created by lyuich on 4/15/17.
//  Copyright © 2017 lyuich. All rights reserved.
//

struct GitHubAPIError : JSONDecodable, Error {
    let message: String

    init(json: Any) throws {
        guard let dictionary = json as? [String : Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }

        guard let message = dictionary["message"] as? String else {
            throw JSONDecodeError.missingValue(key: "message", actualValue: dictionary["message"])
        }

        self.message = message
    }
}
