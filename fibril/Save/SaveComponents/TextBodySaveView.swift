//
import SwiftUI

struct TextBodySaveView: View {
    @Binding var textBody: String
    @FocusState private var isFocused: Bool

    var body: some View {
        TextField("Note", text: $textBody, axis: .vertical)
            .focused($isFocused)
           
    }
}

#Preview {
    TextBodySaveView(textBody: .constant(""))
}

