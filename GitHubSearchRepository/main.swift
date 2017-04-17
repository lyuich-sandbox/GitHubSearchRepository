//
//  main.swift
//  GitHubSearchRepository
//
//  Created by lyuich on 2017/04/10.
//  Copyright © 2017 lyuich. All rights reserved.
//

import Foundation

print("Enter your query here> ", terminator: "")

guard let keyword = readLine(strippingNewline: true) else {
    exit(1)
}

let client = GitHubClient()
let request = GitHubAPI.SearchRepositories(keyword: keyword)

client.send(request: request) { result in
    switch result {
    case let .success(response):
        for item in response.items {
            print(item.owner.login + "/" + item.name)
        }
        exit(0)
    case let .failure(error):
        print(error)
        exit(1)
    }
}

let timeoutInterval: TimeInterval = 60
Thread.sleep(forTimeInterval: timeoutInterval)

print("Connection timeout")
exit(1)
