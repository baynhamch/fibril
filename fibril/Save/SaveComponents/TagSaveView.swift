//
//  TagSaveView.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 5/17/24.
//
//
//  TagSaveView

import SwiftUI

struct TagSaveView: View {
    @State private var tags: [String] = []
    @State private var tag: [String] = []
    
    @State private var tagItem: String = ""
    //    @Binding var tags: [String]
    var body: some View {
        
        VStack {
            HStack {
                TextField("Enter tag", text: $tagItem)
                Spacer()
                Button(action: {
                    addTag()
                }) {
                    Image(systemName: "chevron.right")
                }
            }
            .padding(.horizontal)
            ScrollView {
                LazyHGrid(rows: [GridItem(.adaptive(minimum: 100))], spacing: 8) {
                    ForEach(tags, id: \.self) { tag in
                        Text(tag).onLongPressGesture {
                            if let index = tags.firstIndex(of: tag) {
                                tags.remove(at: index)
                            }
                        }
                        
                        
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.gray, lineWidth: 1)
                        )
                    }
                }
                .padding()
            }
            .frame(maxHeight: 100)
            
        }
        
    }
    private func addTag() {
        guard !tagItem.isEmpty else { return }
        tags.append(tagItem)
        tagItem = ""
    }
    private func saveTages() {
        
    }
}

#Preview {
    TagSaveView()
}
