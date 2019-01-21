//
//  SearchResponse.swift
//  GitHubSearch
//
//  Created by 棗光幹 on 2019/01/21.
//  Copyright © 2019 natumn. All rights reserved.
//

import Foundation

struct SearchResponse<Item: Decodable> : Decodable {
    let totalCount: Int
    let items: [Item]
    
    enum CodingKeys : String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}

