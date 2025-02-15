////
////  AddInfoView.swift
////  fibril
////
////  Created by Nicholas Conant-Hiley on 5/17/24.
////
//
//import SwiftUI
//
//struct AddInfoView: View {
//    @Environment(\.dismiss) var dismiss
//    @State private var noteTitle: String = ""
//    @State private var textBody: String = ""
//    @State private var linkText: String = ""
//    @State private var views: [AnyView] = []
//
//    @FocusState private var titleFieldIsFocused: Bool
//
//    enum SaveViewType {
//        case text
//        case web
//        case map
//        case connection
//        case tag
//    }
//    func addSaveComponent(_ viewType: AddInfoView.SaveViewType) {
//        switch viewType {
//        case .text:
//            // Generate a unique identifier for each view
//            let id = UUID()
//            // Append the TextBodySaveView with its own unique binding
//            views.append(AnyView(TextBodySaveView(textBody: .init(get: { self.textBody }, set: { self.textBody = $0 }))))
//        case .web:
//            // Generate a unique identifier for each view
//            let id = UUID()
//            // Append the WebSaveView with its own unique binding
//            views.append(AnyView(WebSaveView(linkText: .init(get: { self.linkText }, set: { self.linkText = $0 }))))
//        case .map:
//            print("map added")
//            views.append(AnyView(LocationSaveView()))
//        case .connection:
//            print("Connection added")
//        case .tag:
//            print("tag added")
//        }
//    }
//
////    func addSaveComponent(_ viewType: AddInfoView.SaveViewType) {
////        switch viewType {
////        case .text:
////            // Generate a unique identifier for each view
////            let id = UUID()
////            // Append the TextBodySaveView with its own unique binding
////            views.append(AnyView(TextBodySaveView(textBody: .init(get: { self.textBody }, set: { self.textBody = $0 }))))
////        case .web:
////            // Generate a unique identifier for each view
////            let id = UUID()
////            // Append the WebSaveView with its own unique binding
////            views.append(AnyView(WebSaveView(linkText: .init(get: { self.linkText }, set: { self.linkText = $0 }))))
////        case .map:
////            print("map added")
////            views.append(AnyView(LocationSaveView()))
////        case .connection:
////            print("Connection added")
////        case .tag:
////            print("tag added")
////        }
////    }
//
//
////    func addSaveComponent(_ viewType: AddInfoView.SaveViewType) {
////            switch viewType {
////            case .text:
////                views.append(AnyView(TextBodySaveView(textBody: $textBody)))
////            case .web:
////                views.append(AnyView( WebSaveView(linkText: $linkText)))
////            case .map:
////                print("map added")
////                views.append(AnyView(LocationSaveView()))
////            case .connection:
////                print("Connection added")
////            case .tag:
////                print("tag added")
////            }
////        }
//
//
//
//    func dismissKeyboard() {}
//
//    var body: some View {
//        NavigationStack {
//            VStack {
//                ScrollView {
//                    TitleSaveView(noteTitle: $noteTitle)
//                    TextBodySaveView(textBody: $textBody)
//
//                    ForEach(views.indices, id: \.self) { index in
//                        views[index]
//                            .onLongPressGesture {
//                                views.remove(at: index)
//                        }
//                    }
//                }
//
//                HStack {
//                    ScrollView(.horizontal) {
//                        HStack(spacing: 30) {
//                            ToolBarButton(icon: "text.alignleft", viewType: .text, addSaveComponent: addSaveComponent)
//                            ToolBarButton(icon: "globe", viewType: .web, addSaveComponent: addSaveComponent)
//                            ToolBarButton(icon: "map", viewType: .map, addSaveComponent: addSaveComponent)
////                            ToolBarButton(icon: "globe", viewType: .web)
////                            ToolBarButton(icon: "map", viewType: .map)
////                            ToolBarButton(icon: "text.alignleft")
////                            ToolBarButton(icon: "globe")
////                            ToolBarButton(icon: "map")
////                            ToolBarButton(icon: "tag")
////                            ToolBarButton(icon: "link")
////                            ToolBarButton(icon: "photo")
////                            ToolBarButton(icon: "folder")
//                        }
//
//                    }.scrollIndicators(.hidden)
//                    Divider()
////                    ToolBarButton(icon: "chevron.down", btnFunc: dismissKeyboard)
//                    Button {
//                        print("Dismmiss")
//                    } label: { Image(systemName: "chevron.down")}
//                        .padding(.horizontal, 10)
//                }.font(.title2).frame(height: 50)
//            }
//            .padding(.horizontal)
//            .toolbar {
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button {
//                        dismiss()
//                    } label: {
//                        if noteTitle.isEmpty {
//                            Image(systemName: "xmark").foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                        }
//                        else {
//                            Text("Save")
//                                .font(.title2)
//                                .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//#Preview {
//    AddInfoView()
//}
//
//
//struct ToolBarButton: View {
//    var icon: String
//    var viewType: AddInfoView.SaveViewType
//    var addSaveComponent: (AddInfoView.SaveViewType) -> Void
//
//    var body: some View {
//        Button(action: {
//            addSaveComponent(viewType)
//        }) {
//            VStack {
//                Image(systemName: icon)
//            }
//        }
//    }
//}
//import SwiftUI
//
//// Model representing each text entry
//struct TextEntry: Identifiable {
//    let id = UUID()
//    var text: String
//}
//struct WebEntry: Identifiable {
//    let id = UUID()
//    var text: String
//}
//
//struct AddInfoView: View {
//    @Environment(\.dismiss) var dismiss
//    @State private var noteTitle: String = ""
//    @State private var textEntries: [TextEntry] = []
//    @State private var isFocused: Bool = false
//
//    enum SaveViewType {
//        case text
//        case web
//        case map
//        case connection
//        case tag
//    }
//
//    func addSaveComponent(_ viewType: SaveViewType) {
//        switch viewType {
//        case .text:
//            textEntries.append(TextEntry(text: ""))
//        case .web:
//
//            break
//        default:
//            break
//        }
//    }
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                TitleSaveView(noteTitle: $noteTitle)
//
//                ScrollView {
//                    ForEach(textEntries.indices, id: \.self) { index in
//                        TextBodySaveView(textBody: $textEntries[index].text)
//                            .onTapGesture {
//                                isFocused = true
//                            }
//                            .onLongPressGesture {
//                                textEntries.remove(at: index)
//                            }
//                    }
//                }
//
//                HStack {
//                    ScrollView(.horizontal) {
//                        HStack(spacing: 30) {
//                            ToolBarButton(icon: "text.alignleft", viewType: .text, addSaveComponent: addSaveComponent)
//                            // Add buttons for other view types if needed
//                        }
//                    }
//                    .scrollIndicators(.hidden)
//                    .padding(.vertical, 10)
//                    Divider()
//                    Button {
//                        dismiss()
//                    } label: {
//                        if noteTitle.isEmpty {
//                            Image(systemName: "xmark").foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                        } else {
//                            Text("Save")
//                                .font(.title2)
//                                .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                        }
//                    }
//                    .padding(.horizontal, 10)
//                }
//                .font(.title2)
//                .frame(height: 50)
//            }
//            .padding(.horizontal)
//        }
//    }
//}
//
//struct ToolBarButton: View {
//    var icon: String
//    var viewType: AddInfoView.SaveViewType
//    var addSaveComponent: (AddInfoView.SaveViewType) -> Void
//
//    var body: some View {
//        Button(action: {
//            addSaveComponent(viewType)
//        }) {
//            VStack {
//                Image(systemName: icon)
//            }
//        }
//    }
//}


//
//struct WebEntry: Identifiable {
//    let id = UUID()
//    var url: String
//}
//struct TagEntry: Identifiable {
//    let id = UUID()
//    var url: String
//}
//
//struct IdentifiedImage: Identifiable {
//    let id = UUID()
//    let image: Image
//}
//
//struct MapEntry: Identifiable {
//    let id = UUID()
//    var title: String?
//    var mapNote: String?
//    var address: String
//    var coordinates: CLLocationCoordinate2D?
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
//    @State private var mapSheetShow:Bool = false
//    @State private var showConnectionsSheet: Bool = false
//    @State private var tagEntryShown: Bool = false
//    @State private var webSheetShown: Bool = false
//    @State private var imagePickerShown: Bool = false
//    @State private var linkText: String = ""
//
//    @State private var selectedItems: [PhotosPickerItem] = []
//    @State private var identifiedImages: [IdentifiedImage] = []
//    @State private var selectedImages: [Image] = []
//
//    enum SaveViewType {
//        case text
//        case web
//        case map
//        case connection
//        case tag
//        case photo
//    }
//
//    func addSaveComponent(_ viewType: SaveViewType) {
//        switch viewType {
//        case .text:
//            textEntries.append(TextEntry(text: ""))
//        case .web:
//            webEntries.append(WebEntry(url: ""))
//        case .map:
//            mapSheetShow.toggle()
//        case .connection:
//            showConnectionsSheet.toggle()
//        case .tag:
//            tagEntryShown.toggle()
//        case .photo:
//            imagePickerShown.toggle()
//
//        }
//    }
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                TitleSaveView(noteTitle: $noteTitle)
//
//                ScrollView {
//                    ForEach(textEntries.indices, id: \.self) { index in
//                        HStack {  TextBodySaveView(textBody: $textEntries[index].text)
//                            Spacer()
//                            Menu {
//                                Menu("Font") {
//
//                                    Button {
//                                        webSheetShown.toggle()
//                                    } label: {
//                                        HStack {
//                                            Image(systemName: "pencil")
//                                            Spacer()
//                                            Text("Font")
//                                        }
//                                    }
//                                }
//                                Button {
//                                    textEntries.remove(at: index)
//                                    print("Deleted")
//                                } label: {
//                                    HStack {
//                                        Image(systemName: "trash")
//                                        Spacer()
//                                        Text("Remove")
//                                    }
//                                }
//                            } label: {
//                                Image(systemName: "ellipsis")
//                            }  .onLongPressGesture {
//                                textEntries.remove(at: index)
//                            }
//                        }
//                        .onTapGesture {
//                            isFocused = true
//                        }
//                        .onLongPressGesture {
//                            textEntries.remove(at: index)
//                        }
//                    }
//
//                    ForEach(webEntries.indices, id: \.self) { index in
//                        HStack {
//                            WebSaveView(linkText: $webEntries[index].url, webSheetShown: $webSheetShown)
//
//                            Spacer()
//                            Menu {
//                                Button { webSheetShown.toggle()
//                                } label: {
//                                    HStack {
//                                        Image(systemName: "globe")
//                                        Spacer()
//                                        Text("Web View")
//                                    }
//                                }
//                                Button { webEntries.remove(at: index)
//                                } label: {
//                                    HStack {
//                                        Image(systemName: "trash")
//                                        Spacer()
//                                        Text("Remove")
//                                    }
//                                }
//
//                            } label: {
//                                Image(systemName: "ellipsis")
//                            }        .onLongPressGesture {
//                                webEntries.remove(at: index)
//                            }
//
//                        }
//                        .onTapGesture {
//                            isFocused = true
//                        }
//
//
//                    }
//                    if tagEntryShown {
//                        TagSaveView()
//                    }
//
//                    ForEach(identifiedImages) { identifiedImage in
//
//                        HStack {
//                            identifiedImage.image
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: 200, height: 200)
////                                .padding()
//                            Spacer()
//                            {
//                                Button { webSheetShown.toggle()
//                                } label: {
//                                    HStack {
//                                        Image(systemName: "globe")
//                                        Spacer()
//                                        Text("Web View")
//                                    }
//                                }
//                                Button { webEntries.remove(at: index)
//                                } label: {
//                                    HStack {
//                                        Image(systemName: "trash")
//                                        Spacer()
//                                        Text("Remove")
//                                    }
//                                }
//
//                            } label: {
//                                Image(systemName: "ellipsis")
//                            }        .onLongPressGesture {
//                                if let index = identifiedImages.firstIndex(where: { $0.id == identifiedImage.id }) {
//                                    identifiedImages.remove(at: index)
//                                }
//                            }
//                        }
//
//                    }
//
//                }
//
//                HStack {
//                    ScrollView(.horizontal) {
//                        HStack(spacing: 30) {
//                            ToolBarButton(icon: "text.alignleft", viewType: .text, addSaveComponent: addSaveComponent)
//                            ToolBarButton(icon: "globe", viewType: .web, addSaveComponent: addSaveComponent)
//                            ToolBarButton(icon: "map", viewType: .map, addSaveComponent: addSaveComponent)
//                            ToolBarButton(icon: "tag", viewType: .tag, addSaveComponent: addSaveComponent)
//                            ToolBarButton(icon: "link", viewType: .connection, addSaveComponent: addSaveComponent)
//                            ToolBarButton(icon: "photo", viewType: .photo, addSaveComponent: addSaveComponent)
//                        }
//                    }
//                    .scrollIndicators(.hidden)
//                    .padding(.vertical, 10)
//                    Divider()
//                    Button {
//                        print("Dismiss")
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
//                            Image(systemName: "xmark").foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                        } else {
//                            Text("Save")
//                                .font(.title2)
//                                .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                        }
//                    }
//                }
//
//            }
//            .sheet(isPresented: $mapSheetShow, content: {
//                LocationSaveView()
//            })
//            .sheet(isPresented: $showConnectionsSheet, content: {
//                Text("Connection Sheet")
//            })
//            .sheet(isPresented: $webSheetShown, content: {
//                //                WebView(urlString: $webEntries.url[index])
//                Text("web view")
//            })
//            .photosPicker(isPresented: $imagePickerShown, selection: $selectedItems, matching: .images, photoLibrary: .shared()).onChange(of: selectedItems) { _ in
//                processSelectedItems()
//            }
//
////            .photosPicker(isPresented: $imagePickerShown, selection: $selectedItems, matching: .images, photoLibrary: .shared()) {
////                       processSelectedItems()
////                   }
//
//        }
//
//    }
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
//
//}
//
//#Preview {
//    AddInfoView()
//}
//
//struct ToolBarButton: View {
//    var icon: String
//    var viewType: AddInfoView.SaveViewType
//    var addSaveComponent: (AddInfoView.SaveViewType) -> Void
//
//    var body: some View {
//        Button(action: {
//            addSaveComponent(viewType)
//        }) {
//            VStack {
//                Image(systemName: icon)
//                    .font(.title2)
//                    .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//            }
//        }
//    }
//}
//

//struct AddObjectView: View {
//    @Environment(\.dismiss) var dismiss
//
//    @State private var noteTitle: String = ""
//    @State private var linkText: String = ""
//    @State private var webSheetShown: Bool = false
//    @State private var components: [NoteComponent] = []
//    @State private var photoSheetShown: Bool = false
//    @State private var selectedImage: UIImage?
//
//        @State private var selectedItems: [PhotosPickerItem] = []
//    var body: some View {
//        NavigationStack {
//            VStack {
//                TitleSaveView(noteTitle: $noteTitle)
//
//                NoteComponentListView(components: $components)
//                Spacer()
//
//                ToolBarView(components: $components, photoPickerShown: $photoSheetShown)
//
//                    .toolbar {
//
//                        ToolbarItem(placement: .topBarTrailing) {
//                            Button {
//                                dismiss()
//                            } label: {
//                                if noteTitle.isEmpty {
//                                    Image(systemName: "xmark")
//                                        .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                                } else {
//                                    Text("Save")
//                                        .font(.title2)
//                                        .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                                }
//                            }
//                        }
//                    }
////                    .photosPicker(isPresented: $photoSheetShown, selection: $selectedImage, matching: .images, photoLibrary: .shared())
//                    .photosPicker(isPresented: $imagePickerShown, selection: $selectedItems, matching: .images, photoLibrary: .shared())
//                    .onChange(of: selectedItems) { _ in
//                        processSelectedItems()
//                    }
//
//            }
//        }
//    }
//        private func processSelectedItems() {
//            Task {
//                var loadedImages: [IdentifiedImage] = []
//                for item in selectedItems {
//                    if let data = try? await item.loadTransferable(type: Data.self),
//                       let uiImage = UIImage(data: data) {
//                        let identifiedImage = IdentifiedImage(image: Image(uiImage: uiImage))
//                        loadedImages.append(identifiedImage)
//                    }
//                    print("Image loaded")
//                }
//                identifiedImages = loadedImages
//            }
//        }
//}


//import SwiftUI
//import PhotosUI
////struct IdentifiedImage: Identifiable {
////    var id = UUID()
////    var image: Image
////}
//
//struct AddObjectView: View {
//    @Environment(\.dismiss) var dismiss
//
//    @State private var noteTitle: String = ""
//    @State private var linkText: String = ""
//    @State private var webSheetShown: Bool = false
//    @State private var components: [NoteComponent] = []
//    @State private var photoSheetShown: Bool = false
//    @State private var selectedItems: [PhotosPickerItem] = []
//    @State private var identifiedImages: [IdentifiedImage] = []
//    var body: some View {
//        NavigationStack {
//            VStack {
//                TitleSaveView(noteTitle: $noteTitle)
//
//                NoteComponentListView(components: $components)
//                Spacer()
//
//                ToolBarView(components: $components, photoPickerShown: $photoSheetShown)
//
//                    .toolbar {
//
//                        ToolbarItem(placement: .topBarTrailing) {
//                            Button {
//                                dismiss()
//                            } label: {
//                                if noteTitle.isEmpty {
//                                    Image(systemName: "xmark")
//                                        .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                                } else {
//                                    Text("Save")
//                                        .font(.title2)
//                                        .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//                                }
//                            }
//                        }
//                    }
//                    .photosPicker(isPresented: $photoSheetShown, selection: $selectedItems, matching: .images, photoLibrary: .shared())
//                    .onChange(of: selectedItems) { _ in
//                        processSelectedItems()
//                    }
//            }
//        }
//
//    }
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
//
//}
//
//
//struct NoteComponentListView: View {
//    @Binding var components: [NoteComponent]
//
//    var body: some View {
//        ScrollView {
//            ForEach(components.indices, id: \.self) { index in
//                let component = components[index]
//                switch component.type {
//                case .text:
//                    HStack {
//                        BodyTextAddView(text: Binding(
//                            get: { component.content },
//                            set: { newContent in
//                                if let index = components.firstIndex(where: { $0.id == component.id }) {
//                                    components[index].content = newContent
//                                }
//                            }
//                        ))
//                        Spacer()
//                        Menu {
//                            Button(action: { boldItem() }) {
//                                Label("Bold", systemImage: "bold")
//                            }
//                            Button(action: { moveUp(index) }) {
//                                Label("Move Up", systemImage: "arrow.up")
//                            }
//                            Button(action: { moveDown(index) }) {
//                                Label("Move Down", systemImage: "arrow.down")
//                            }
//                            Button(role: .destructive, action: { deleteItem(index) }) {
//                                Label("Delete", systemImage: "trash")
//                            }
//                        } label: {
//                            Image(systemName: "ellipsis").padding(.horizontal)
//                        }
//                    }
//                case .web:
//                    HStack {
//                        WebAddView(webText: Binding(
//                            get: { component.content },
//                            set: { newContent in
//                                if let index = components.firstIndex(where: { $0.id == component.id }) {
//                                    components[index].content = newContent
//                                }
//                            }
//                        ))
//                        Spacer()
//                        Menu {
//                            Button(action: { moveUp(index) }) {
//                                Label("Move Up", systemImage: "arrow.up")
//                            }
//                            Button(action: { moveDown(index) }) {
//                                Label("Move Down", systemImage: "arrow.down")
//                            }
//                            Button(role: .destructive, action: { deleteItem(index) }) {
//                                Label("Delete", systemImage: "trash")
//                            }
//                        } label: {
//                            Image(systemName: "ellipsis").padding(.horizontal)
//                        }
//                    }
//                case .divider:
//                    DividerView()
//
//
//                case .photo:
//                    PhotoItemView(selectedImage: $identifiedImages[index].image)
//                }
//            }
//
//        }
//
//    }
//
//    func boldItem() {
//        // Functionality for bolding text
//    }
//
//    func moveUp(_ index: Int) {
//        guard index > 0 else { return } // Ensure index is not out of bounds
//        components.swapAt(index, index - 1)
//    }
//
//    func moveDown(_ index: Int) {
//        guard index < components.count - 1 else { return } // Ensure index is not out of bounds
//        components.swapAt(index, index + 1)
//    }
//
//    func deleteItem(_ index: Int) {
//        components.remove(at: index)
//    }
//}
//
//#Preview {
//    AddObjectView()
//}
