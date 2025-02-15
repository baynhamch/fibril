//
//  ToolBarVIew.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 5/22/24.
//

import SwiftUI
import PhotosUI

enum NoteComponentType {
    case text
    case web
    case divider
    case photo
}

struct NoteComponent: Identifiable {
    let id = UUID()
    var type: NoteComponentType
    var content: String
}
struct ToolBarView: View {
    
    @Binding var components: [NoteComponent]
    @Binding var photoPickerShown: Bool
    @Binding var selectedItems: [PhotosPickerItem]
    
    @Binding var selectedImage: Image?
    var body: some View {
        HStack {
            ScrollView(.horizontal) {
                HStack(spacing: 30) {
                    Button {
                        components.append(NoteComponent(type: .text, content: ""))
                    } label: {
                        Image(systemName: "text.alignleft")
                            .font(.title2)
                            .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
                    }
                    Button {
                        components.append(NoteComponent(type: .divider, content: ""))
                    } label: {
                        Image(systemName: "line.diagonal")
                            .rotationEffect(.degrees(45))
                            .font(.title2)
                            .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
                    }
                    Button {
                        components.append(NoteComponent(type: .web, content: ""))
                    } label: {
                        Image(systemName: "globe")
                            .font(.title2)
                            .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
                    }
                    PhotosPicker(selection: $selectedItems,
                                 matching: .images) {
                        Image(systemName: "photo")
                            .font(.title2)
                            .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
                    }.onChange(of: selectedItems) { oldItems, newItems in
                        Task {
                            if let newItem = newItems.first,
//                               let image = try? await newItem.loadTransferable(type: Image.self) {
//                                selectedImage = image
//                            }
                                let image = try? await newItem.loadTransferable(type: Image.self) {
                                                       selectedImage = image
//                                                       handlePhotoSelection()
                                                   }
                        }
                    }
       
                    Button {
                        print("tag")
                    } label: {
                        Image(systemName: "tag")
                            .font(.title2)
                            .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
                    }
                    Button {
                        print("Link")
                    } label: {
                        Image(systemName: "link")
                            .font(.title2)
                            .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
                    }
                    
                }
                
            }
            .padding(.leading, 20)
            .scrollIndicators(.hidden)
            
            Divider()
            Button {
                print("Link")
            } label: {
                Image(systemName: "chevron.down")
                    .font(.title2)
                    .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
            }
        }
        .frame(height: 50)
        
        .padding(.horizontal)
        
    }
//    func handlePhotoSelection() {
//        photoPickerShown = false // Hide photo picker
//        if let selectedImage = selectedImage {
//            components.append(NoteComponent(type: .photo, content: selectedImage)) // Add the selected image to components
//        }
//    }
    
}

//struct ToolBarView: View {
//    
//    @Binding var components: [NoteComponent]
//    @Binding var photoPickerShown: Bool
//    @Binding var selectedItems: [PhotosPickerItem]
//    
//    @State private var selectedImage: Image?
//    var body: some View {
//        HStack {
//            ScrollView(.horizontal) {
//                HStack(spacing: 30) {
//                    Button {
//                        components.append(NoteComponent(type: .text, content: ""))
//                    } label: {
//                        Image(systemName: "text.alignleft")
//                            .font(.title2)
//                            .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                    }
//                    Button {
//                        components.append(NoteComponent(type: .divider, content: ""))
//                    } label: {
//                        Image(systemName: "line.diagonal")
//                            .rotationEffect(.degrees(45))
//                            .font(.title2)
//                            .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                    }
//                    Button {
//                        components.append(NoteComponent(type: .web, content: ""))
//                    } label: {
//                        Image(systemName: "globe")
//                            .font(.title2)
//                            .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                    }
//                    PhotosPicker(selection: $selectedItems,
//                                 matching: .images) {
//                        Image(systemName: "photo")
//                            .font(.title2)
//                            .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                    }.onChange(of: selectedItem) { oldItem, newItem in
//                        Task {
//                                              if let newItem = newItems.first,
//                                                 let image = try? await newItem.loadTransferable(type: Image.self) {
//                                                  selectedImage = image
//                                              }
////                        Task {
////                            if let image = try? await newItem?.loadTransferable(type: Image.self) {
////                                selectedImage = image
////                            }
//                        }
//                    }
//       
//                    Button {
//                        print("tag")
//                    } label: {
//                        Image(systemName: "tag")
//                            .font(.title2)
//                            .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                    }
//                    Button {
//                        print("Link")
//                    } label: {
//                        Image(systemName: "link")
//                            .font(.title2)
//                            .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                    }
//                    
//                }
//                
//            }
//            .padding(.leading, 20)
//            .scrollIndicators(.hidden)
//            
//            Divider()
//            Button {
//                print("Link")
//            } label: {
//                Image(systemName: "chevron.down")
//                    .font(.title2)
//                    .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//            }
//        }
//        .frame(height: 50)
//        
//        .padding(.horizontal)
//        
//    }
//    
//}


//
//#Preview {
//    ToolBarView(components: .constant([]), photoPickerShown: .constant(false), selectedItems: <#Binding<[PhotosPickerItem]>#>)
//}
