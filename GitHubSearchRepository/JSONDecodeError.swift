//
//  JSONDecodeError.swift
//  GitHubSearchRepository
//
//  Created by lyuich on 4/14/17.
//  Copyright © 2017 lyuich. All rights reserved.
//

enum JSONDecodeError: Error {
    case invalidFormat(json: Any)
    case missingValue(key: String, actualValue: Any?)
}
