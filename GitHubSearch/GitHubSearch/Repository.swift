//
//  Repository.swift
//  GitHubSearch
//
//  Created by 棗光幹 on 2019/01/21.
//  Copyright © 2019 natumn. All rights reserved.
//

import Foundation

struct Repository : Decodable {
    let id: Int
    let name: String
    let fullName: String
    let owner: User
    
    enum CodingKeys : String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }
}
