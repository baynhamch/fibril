//////
////import SwiftUI
////import CoreLocation
////import PhotosUI
////struct TextEntry: Identifiable {
////    let id = UUID()
////    var text: String
////}
//
//import SwiftUI
//import CoreLocation
//import PhotosUI
//
//
//struct Page: Identifiable {
//    let id = UUID()
//    let userID: String
//    let title: TitleEntry
//    var webEntries: [WebEntry] = []
//    var textEntries: [TextEntry] = []
//    var tagEntries: [TagEntry] = []
//    var images: [IdentifiedImage] = []
//    var mapEntries: [MapEntry] = []
//    var connectionEntries: [ConnectionEntry] = []
//}
//
//struct TitleEntry: Identifiable {
//    let id = UUID()
//    var date = Date.now
//    let text: String
//}
//
//struct TextEntry: Identifiable {
//    let id = UUID()
//    var date = Date.now
//    var text: String
//}
//
//struct WebEntry: Identifiable {
//    let id = UUID()
//    var date = Date.now
//    var url: String
//}
//
//struct TagEntry: Identifiable {
//    let id = UUID()
//    var date = Date.now
//    var tagText: String
//}
//
//struct IdentifiedImage: Identifiable {
//    let id = UUID()
//    var date = Date.now
//    let image: Image
//}
//
//struct MapEntry: Identifiable {
//    let id = UUID()
//    var title: String?
//    var date = Date.now
//    var mapNote: String?
//    var address: String
//    var coordinates: CLLocationCoordinate2D?
//}
//
//struct ConnectionEntry: Identifiable {
//    let id = UUID()
//    var date = Date.now
//    let connectionItemID: String
//}
//
//struct AddInfoView: View {
//    @Environment(\.dismiss) var dismiss
//    @State private var noteTitle: String = ""
//    @State private var textEntries: [TextEntry] = []
//    @State private var webEntries: [WebEntry] = []
//    @State private var tagEntries: [TagEntry] = []
//    @State private var tag: String = ""
//    @State private var isFocused: Bool = false
//    @State private var mapSheetShow: Bool = false
//    @State private var showConnectionsSheet: Bool = false
//    @State private var tagEntryShown: Bool = false
//    @State private var webSheetShown: Bool = false
//    @State private var imagePickerShown: Bool = false
//    @State private var linkText: String = ""
////    @State private var entries: [Any] = []
//    @State private var viewsArray: [AnyView] = []
//    
//    
//    @State private var selectedItems: [PhotosPickerItem] = []
//    @State private var identifiedImages: [IdentifiedImage] = []
//    
//    //    enum SaveViewType {
//    //        case text
//    //        case web
//    //        case map
//    //        case connection
//    //        case tag
//    //        case photo
//    //    }
//    //
//    //    func addSaveComponent(_ viewType: SaveViewType) {
//    //        switch viewType {
//    //        case .text:
//    //            textEntries.append(TextEntry(text: ""))
//    ////            entries.append(TextEntry(text: ""))
//    //        case .web:
//    //            webEntries.append(WebEntry(url: ""))
//    ////            entries.append(WebEntry(url: ""))
//    //        case .map:
//    //            mapSheetShow.toggle()
//    //        case .connection:
//    //            showConnectionsSheet.toggle()
//    //        case .tag:
//    //            tagEntryShown.toggle()
//    //        case .photo:
//    //            imagePickerShown.toggle()
//    //        }
//    //    }
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                
//                
//                
//                TitleSaveView(noteTitle: $noteTitle)
//                
//                ScrollView {
//                    ForEach(viewsArray.indices, id: \.self) { index in
//                        viewsArray[index]
//                    }
////                    ForEach(textEntries.indices, id: \.self) { index in
////                        HStack {
////                            TextBodySaveView(textBody: $textEntries[index].text)
////                            Spacer()
////                            Menu {
////                                Menu("Font") {
////                                    Button {
////                                        webSheetShown.toggle()
////                                    } label: {
////                                        HStack {
////                                            Image(systemName: "pencil")
////                                            Spacer()
////                                            Text("Font")
////                                        }
////                                    }
////                                }
////                                Button {
////                                    textEntries.remove(at: index)
////                                    print("Deleted")
////                                } label: {
////                                    HStack {
////                                        Image(systemName: "trash")
////                                        Spacer()
////                                        Text("Remove")
////                                    }
////                                }
////                            } label: {
////                                Image(systemName: "ellipsis")
////                            }
////                            .onLongPressGesture {
////                                textEntries.remove(at: index)
////                            }
////                        }
////                        .onTapGesture {
////                            isFocused = true
////                        }
////                    }
//                    
//                    ForEach(webEntries.indices, id: \.self) { index in
//                        HStack {
//                            WebSaveView(linkText: $webEntries[index].url, webSheetShown: $webSheetShown)
//                            Spacer()
//                            Menu {
//                                Button {
//                                    webSheetShown.toggle()
//                                } label: {
//                                    HStack {
//                                        Image(systemName: "globe")
//                                        Spacer()
//                                        Text("Web View")
//                                    }
//                                }
//                                Button {
//                                    webEntries.remove(at: index)
//                                } label: {
//                                    HStack {
//                                        Image(systemName: "trash")
//                                        Spacer()
//                                        Text("Remove")
//                                    }
//                                }
//                            } label: {
//                                Image(systemName: "ellipsis")
//                            }
//                            .onLongPressGesture {
//                                webEntries.remove(at: index)
//                            }
//                        }
//                        .onTapGesture {
//                            isFocused = true
//                        }
//                    }
//                    
//                    if tagEntryShown {
//                        TagSaveView()
//                    }
//                    
//                    ForEach(identifiedImages) { identifiedImage in
//                        HStack {
//                            identifiedImage.image
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: 200, height: 200)
//                            Spacer()
//                            Menu {
//                                Button {
//                                    webSheetShown.toggle()
//                                } label: {
//                                    HStack {
//                                        Image(systemName: "globe")
//                                        Spacer()
//                                        Text("Web View")
//                                    }
//                                }
//                                Button {
//                                    if let index = identifiedImages.firstIndex(where: { $0.id == identifiedImage.id }) {
//                                        identifiedImages.remove(at: index)
//                                    }
//                                } label: {
//                                    HStack {
//                                        Image(systemName: "trash")
//                                        Spacer()
//                                        Text("Remove")
//                                    }
//                                }
//                            } label: {
//                                Image(systemName: "ellipsis")
//                            }
//                            .onLongPressGesture {
//                                if let index = identifiedImages.firstIndex(where: { $0.id == identifiedImage.id }) {
//                                    identifiedImages.remove(at: index)
//                                }
//                            }
//                        }
//                    }
//                }
//                
//                HStack {
//                    ScrollView(.horizontal) {
//                        HStack(spacing: 30) {
//                            Button(action: {
//                                viewsArray.append(AnyView(TextBodySaveView()))
//                                
//                            }) {
//                                VStack {
//                                    Image(systemName: "text.alignleft")
//                                        .font(.title2)
//                                        .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                                }
//                            }
//                            Button(action: {
//                                viewsArray.append(AnyView(WebSaveView()))
//                                
//                            }) {
//                                VStack {
//                                    Image(systemName: "globe")
//                                        .font(.title2)
//                                        .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                                }
//                            }
//                            //                            ToolBarButton(icon: "text.alignleft", viewType: .text, addSaveComponent: addSaveComponent)
//                            //                            ToolBarButton(icon: "globe", viewType: .web, addSaveComponent: addSaveComponent)
//                            //                            ToolBarButton(icon: "map", viewType: .map, addSaveComponent: addSaveComponent)
//                            //                            ToolBarButton(icon: "tag", viewType: .tag, addSaveComponent: addSaveComponent)
//                            //                            ToolBarButton(icon: "link", viewType: .connection, addSaveComponent: addSaveComponent)
//                            //                            ToolBarButton(icon: "photo", viewType: .photo, addSaveComponent: addSaveComponent)
//                        }
//                    }
//                    .scrollIndicators(.hidden)
//                    .padding(.vertical, 10)
//                    Divider()
//                    Button {
//                        dismiss()
//                    } label: {
//                        Image(systemName: "chevron.down")
//                            .font(.title2)
//                            .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                    }
//                    .padding(.horizontal, 10)
//                }
//                .font(.title2)
//                .frame(height: 50)
//            }
//            .padding(.horizontal)
//            .toolbar {
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button {
//                        dismiss()
//                    } label: {
//                        if noteTitle.isEmpty {
//                            Image(systemName: "xmark")
//                                .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                        } else {
//                            Text("Save")
//                                .font(.title2)
//                                .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                        }
//                    }
//                }
//            }
//            //            .sheet(isPresented: $mapSheetShow) {
//            //                LocationSaveView()
//            //            }
//            .sheet(isPresented: $showConnectionsSheet) {
//                Text("Connection Sheet")
//            }
//            .sheet(isPresented: $webSheetShown) {
//                Text("Web View")
//            }
//    @State private var selectedItems: [PhotosPickerItem] = []
//    @State private var identifiedImages: [IdentifiedImage] = []
//            .photosPicker(isPresented: $imagePickerShown, selection: $selectedItems, matching: .images, photoLibrary: .shared())
//            .onChange(of: selectedItems) { _ in
//                processSelectedItems()
//            }
//        }
//    }
//    
//    private func processSelectedItems() {
//        Task {
//            var loadedImages: [IdentifiedImage] = []
//            for item in selectedItems {
//                if let data = try? await item.loadTransferable(type: Data.self),
//                   let uiImage = UIImage(data: data) {
//                    let identifiedImage = IdentifiedImage(image: Image(uiImage: uiImage))
//                    loadedImages.append(identifiedImage)
//                }
//                print("Image loaded")
//            }
//            identifiedImages = loadedImages
//        }
//    }
//}
//
//#Preview {
//    AddInfoView()
//    //}
//    //
//    //struct ToolBarButton: View {
//    //    var icon: String
//    //    var viewType: AddInfoView.SaveViewType
//    //    var addSaveComponent: (AddInfoView.SaveViewType) -> Void
//    //
//    //    var body: some View {
//    //        Button(action: {
//    //            addSaveComponent(viewType)
//    //        }) {
//    //            VStack {
//    //                Image(systemName: icon)
//    //                    .font(.title2)
//    //                    .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//    //            }
//    //        }
//    //    }
//    //}
//}
