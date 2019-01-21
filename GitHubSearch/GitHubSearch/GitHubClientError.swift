//
//  GitHubClientError.swift
//  GitHubSearch
//
//  Created by 棗光幹 on 2019/01/21.
//  Copyright © 2019 natumn. All rights reserved.
//

import Foundation

enum GitHubClientError : Error {
    // 通信に失敗
    case connectionError(Error)
    
    //レスポンスのパースに失敗
    case responseParseError(Error)
    
    // APIからエラーレスポンスを受け取った
    case apiError(GitHubAPIError)
}
