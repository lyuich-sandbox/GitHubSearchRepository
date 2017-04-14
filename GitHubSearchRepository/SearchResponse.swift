//
//  SearchResponse.swift
//  GitHubSearchRepository
//
//  Created by lyuich on 4/14/17.
//  Copyright © 2017 lyuich. All rights reserved.
//

struct SearchResponse<Item> {
    let totalCount: Int
    let items: [Item]
}
