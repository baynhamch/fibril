//
//  WebView.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 5/17/24.
//
//
//import SwiftUI
//
//struct WebView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    WebView()
//}
import SwiftUI
import WebKit

struct WebView: View {
    let urlString: String
    @Binding var linkText: String
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            VStack {
                WebViewContent(urlString: urlString)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Close") {
                        dismiss()
                    }
                }
            }
            .navigationTitle("Web View")
        }
    }
}

struct WebViewContent: UIViewRepresentable {
    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

//#Preview {
//    WebView(urlString: "https://techcrunch.com/2024/03/27/databricks-spent-10m-on-a-generative-ai-model-that-still-cant-beat-gpt-4/")
//}
