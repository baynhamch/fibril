//
//  AddWordViewModel.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 12/19/24.
//
import Foundation
import SwiftUI
import SwiftData


class AddWordViewModel: ObservableObject {
    @Environment(\.modelContext) var modelContext
    
    @Published  var word: String = ""
    @Published  var partOfSpeech: String = ""
    @Published  var definition: String = ""
    @Published  var etymology: String? = ""
    @Published  var example: String? = ""
    
    @Environment(\.dismiss) var dismiss
    
     func saveWord() {
        let newWord = Word(
            word: word,
            definition: definition,
            partOfSpeech: partOfSpeech,
            etymology: etymology,
            examples: example.map { [$0] },
            dateCreated: .now
        )
         let testWord =  Word(word: "Test", definition: "dafsdfdsf", partOfSpeech: "noun", dateCreated: .now)
         modelContext.insert(newWord)
         print("Saved word: \(newWord.word), saved ")
        
    }
}
