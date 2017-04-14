//
//  Repository.swift
//  GitHubSearchRepository
//
//  Created by lyuich on 2017/04/10.
//  Copyright © 2017 lyuich. All rights reserved.
//

struct Repository: JSONDecodable {
    let id: Int
    let name: String
    let fullName: String
    let owner: User

    init(json: Any) throws {
        guard let dictionary = json as? [String : Any] else {
            throw JSONDecodeErorr.invalidFormat(json: json)
        }

        guard let id = dictionary["id"] as? Int else {
            throw JSONDecodeErorr.missingValue(key: "id", actualValue: dictionary["id"])
        }

        guard let name = dictionary["name"] as? String else {
            throw JSONDecodeErorr.missingValue(key: "name", actualValue: dictionary["name"])
        }

        guard let fullName = dictionary["full_name"] as? String else {
            throw JSONDecodeErorr.missingValue(key: "full_name", actualValue: dictionary["full_name"])
        }

        guard let ownerObject = dictionary["owner"] else {
            throw JSONDecodeErorr.missingValue(key: "owner", actualValue: dictionary["owner"])
        }

        self.id = id
        self.name = name
        self.fullName = fullName
        self.owner = try User(json: ownerObject)
    }
}
