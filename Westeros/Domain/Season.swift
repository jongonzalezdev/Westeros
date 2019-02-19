//
//  Season.swift
//  Westeros
//
//  Created by Jon Gonzalez on 18/02/2019.
//  Copyright © 2019 Jon Gonzalez. All rights reserved.
//

import Foundation

typealias Episodes = Set<String>

final class Season {
    // MARK: Properties
    let name: String
    let releaseDate: Date
    private var _episodes: Episodes
    
    // MARK: Initialization
    init(name: String, releaseDate: Date) {
        self.name = name
        self.releaseDate = releaseDate
        _episodes = Episodes()
    }
}

extension Season {
    var proxyForEquality: String {
        return "\(name) \(releaseDate)"
    }

    var proxyForComparison: String {
        return "\(name) \(releaseDate)"
    }
}

extension Season: CustomStringConvertible {
    var description: String {
        return proxyForEquality
    }
}

extension Season: Equatable {
    static func == (lhs: Season, rhs: Season) -> Bool {
        return lhs.proxyForEquality == rhs.proxyForEquality
    }
}

extension Season: Hashable {
    var hashValue: Int {
        return proxyForEquality.hashValue
    }
}

extension Season: Comparable {
    static func < (lhs: Season, rhs: Season) -> Bool {
        return lhs.proxyForComparison < rhs.proxyForComparison
    }
    
    
}
