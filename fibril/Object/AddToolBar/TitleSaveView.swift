//
//  TitleSaveView.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 5/22/24.
//

import SwiftUI

struct TitleSaveView: View {
    @Binding var noteTitle: String
    var body: some View {
        TextField("Enter Title", text: $noteTitle)
            .padding()
            .font(.title)
    }
}

#Preview {
    TitleSaveView(noteTitle: .constant("Sample Title"))
}
