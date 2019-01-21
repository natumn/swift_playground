//
//  GitHubAPI.swift
//  GitHubSearch
//
//  Created by 棗光幹 on 2019/01/21.
//  Copyright © 2019 natumn. All rights reserved.
//

import Foundation

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
    
        var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
    }
    
    struct SearchUsers : GitHubRequest {
        let keyword: String
         typealias Response = SearchResponse<User>
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/users"
        }
        
        var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
    }
}
