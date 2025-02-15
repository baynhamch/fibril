//
//  Item.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 5/17/24.
//

import Foundation
import SwiftData
import SwiftUI

class Item: Observable, Identifiable {
    var id: UUID
    var date: Date
    var title: String
    var text: [String]?
    var locations: [String]?
    var tags: [String]?
    var connections: [String]?
    var cover: [String]?
    var images: [Image]?
    var links: [String]?
    
    init(id: UUID, date: Date, title: String, text: [String]? = nil, locations: [String]? = nil, tags: [String]? = nil, connections: [String]? = nil, cover: [String]? = nil, images: [Image]? = nil, links: [String]? = nil) {
        self.id = id
        self.date = date
        self.title = title
        self.text = text
        self.locations = locations
        self.tags = tags
        self.connections = connections
        self.cover = cover
        self.images = images
        self.links = links
    }
}
