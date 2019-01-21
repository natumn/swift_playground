import UIKit

struct NewsFeedItem {
    enum Kind {
        case a
        case b
        case c
    }
    
    let id: Int
    let title: String
    let type: Kind
}

let type = NewsFeedItem.Kind.a
let item = (id: 1, title: "Table", type: type)

switch item.type {
case .a:
    print("a")
default:
    print("another")
}
