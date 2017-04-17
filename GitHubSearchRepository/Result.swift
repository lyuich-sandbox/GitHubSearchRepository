//
//  Result.swift
//  GitHubSearchRepository
//
//  Created by lyuich on 4/17/17.
//  Copyright © 2017 lyuich. All rights reserved.
//

enum Result<T, Error : Swift.Error> {
    case success(T)
    case failure(Error)

    init(value: T) {
        self = .success(value)
    }

    init(error: Error) {
        self = .failure(error)
    }
}
