//
//  p.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 5/23/24.
//

import SwiftUI
import PhotosUI

struct p: View {
    @State private var avatarItem: PhotosPickerItem?
     @State private var avatarImage: Image?
    @State private var photoShown: Bool = false
    var body: some View {
        VStack {
//                  PhotosPicker("Select avatar", selection: $avatarItem, matching: .images)
            Button("Open") {
                photoShown.toggle()
            }
                  avatarImage?
                      .resizable()
                      .scaledToFit()
                      .frame(width: 300, height: 300)
              }
        .photosPicker(isPresented: $photoShown, selection: $avatarItem)
              .onChange(of: avatarItem) {
                  Task {
                      if let loaded = try? await avatarItem?.loadTransferable(type: Image.self) {
                          avatarImage = loaded
                      } else {
                          print("Failed")
                      }
                  }
              }
    }
}

#Preview {
    p()
}
