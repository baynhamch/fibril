//
//  WebAddView.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 5/22/24.
//

import SwiftUI

struct WebAddView: View {
    @Binding var webText: String
    var body: some View {
        HStack {
            TextField("URL...", text: $webText)
        }
        .padding(.bottom, 5)
        .padding(.horizontal, 10)
    }
}

//#Preview {
//    WebAddView(showWebPageView: .constant(false), webText: .constant("www.google.com"))
//}
