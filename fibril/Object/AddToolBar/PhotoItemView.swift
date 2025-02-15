//
//  PhotoItemView.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 5/22/24.
//
import SwiftUI
import UIKit

struct IdentifiedImage: Identifiable {
    var id = UUID()
    var uiImage: UIImage
}

struct PhotoItemView: View {
    var identifiedImage: IdentifiedImage

    var body: some View {
        Text("PHoto Item View")
//        let uiImage = identifiedImage.uiImage
//        if let image = Image(uiImage: uiImage) {
//            image
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 100, height: 100) // Adjust size as needed
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                .padding()
//        } else {
//            Text("No Image Selected")
//                .foregroundColor(.gray)
//                .padding()
//        }
    }
}

//import SwiftUI
//import UIKit
//
//struct IdentifiedImage: Identifiable {
//    var id = UUID()
//    var uiImage: UIImage
//}
//
//struct PhotoItemView: View {
//    var identifiedImage: IdentifiedImage
//
//    var body: some View {
//        let image = identifiedImage.image
//        if let uiImage = image.uiImage {
//            Image(uiImage: uiImage)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 100, height: 100) // Adjust size as needed
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                .padding()
//        } else {
//            Text("No Image Selected")
//                .foregroundColor(.gray)
//                .padding()
//        }
//    }
//}

//#Preview {
//    PhotoItemView(selectedImage: .constant(UIImage(named: "placeholderImage"))) // You can replace `placeholderImage` with your default image or `nil` if no image selected.
//}


