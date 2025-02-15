//
//  WebSaveView.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 5/17/24.
//

import SwiftUI

struct WebSaveView: View {
    @Binding var linkText: String
    @Binding var webSheetShown: Bool
    var body: some View {
        
        VStack {
            HStack {
                TextField("URL", text: $linkText, axis: .vertical)
                    .textInputAutocapitalization(.none)
                Spacer()
                Button {
                    webSheetShown.toggle()
                } label: {
                    Image(systemName: "safari")
                }
//
            }
        }.padding(.bottom, 5)
    }
}

//#Preview {
//    WebSaveView(linkText: .constant(""))
//        .padding()
//}

