//
//  BodyTextAddView.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 5/22/24.
//

import SwiftUI

struct BodyTextAddView: View {
    @Binding var text: String
    var body: some View {
        TextField("Enter Thought", text: $text, axis: .vertical)
            .padding(.bottom, 5)
            .padding(.horizontal, 10)
    }
}

//#Preview {
//    BodyTextAddView(text: .constant("Test: Manages an array of NoteComponent and dynamically displays the appropriate views based on the type."))
//}
