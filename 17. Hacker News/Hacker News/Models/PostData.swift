//
//  PostData.swift
//  Hacker News
//
//  Created by Keon Hee Park on 2022/04/03.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
