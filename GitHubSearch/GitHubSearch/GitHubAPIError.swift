//
//  GitHubAPIError.swift
//  GitHubSearch
//
//  Created by 棗光幹 on 2019/01/21.
//  Copyright © 2019 natumn. All rights reserved.
//

import Foundation

struct GitHubAPIError : Decodable, Error {
    struct FieldError : Decodable {
        let resource: String
        let field: String
        let code: String
    }
    
    let message: String
    let fieldErrors: [FieldError]
}
