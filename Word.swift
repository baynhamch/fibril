//
//  Word.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 12/19/24.
//


import SwiftData
import Foundation

@Model
class Word: Identifiable {
    var id = UUID() // Unique identifier
    var word: String
    var definition: String
    var partOfSpeech: String
    var etymology: String?
    var examples: [String]?
    var origin: String?
    var pronunciation: String?
    var dateCreated: Date = Date()
    
    init(id: UUID = UUID(), word: String, definition: String, partOfSpeech: String, etymology: String? = nil, examples: [String]? = nil, origin: String? = nil, pronunciation: String? = nil, dateCreated: Date) {
        self.id = id
        self.word = word
        self.definition = definition
        self.partOfSpeech = partOfSpeech
        self.etymology = etymology
        self.examples = examples
        self.origin = origin
        self.pronunciation = pronunciation
        self.dateCreated = dateCreated
    }
}
