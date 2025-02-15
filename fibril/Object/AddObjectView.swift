//
import SwiftUI
import PhotosUI

struct AddObjectView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var noteTitle: String = ""
    @State private var linkText: String = ""
    @State private var webSheetShown: Bool = false
    @State private var components: [NoteComponent] = []
    @State private var photoSheetShown: Bool = false
    @State private var photoItem: PhotosPickerItem?
    @State private var shownImage: Image?
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    @State private var photoShown: Bool = false
    @State var selectedItems: [PhotosPickerItem] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                TitleSaveView(noteTitle: $noteTitle)
                
                NoteComponentListView(components: $components)
                
                
                Spacer()
                if let image = shownImage {
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50) // Adjust size as needed
                                }
         
                ToolBarView(components: $components, photoPickerShown: $photoSheetShown, selectedItems: $selectedItems, selectedImage: $shownImage)
              
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button {
                                dismiss()
                            } label: {
                                if noteTitle.isEmpty {
                                    Image(systemName: "xmark")
                                        .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
                                } else {
                                    Text("Save")
                                        .font(.title2)
                                        .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
                                }
                            }
                        }
                    }
//                
//                    .photosPicker(isPresented: $photoShown, selection: $avatarItem, matching: .images, photoLibrary: .shared())
//                    .onChange(of: avatarItem) {
//                        Task {
//                            if let loaded = try? await avatarItem?.loadTransferable(type: Image.self) {
//                                avatarImage = loaded
//                            } else {
//                                print("Failed")
//                            }
//                        }
//                    }
            }
        }
        
    }
    
}


struct NoteComponentListView: View {
    @Binding var components: [NoteComponent]
    
    var body: some View {
        ScrollView {
            ForEach(components.indices, id: \.self) { index in
                let component = components[index]
                
                switch component.type {
                case .text:
                    HStack {
                        BodyTextAddView(text: Binding(
                            get: { component.content },
                            set: { newContent in
                                if let index = components.firstIndex(where: { $0.id == component.id }) {
                                    components[index].content = newContent
                                }
                            }
                        ))
                        Spacer()
                        Menu {
                            Button(action: { boldItem() }) {
                                Label("Bold", systemImage: "bold")
                            }
                            Button(action: { moveUp(index) }) {
                                Label("Move Up", systemImage: "arrow.up")
                            }
                            Button(action: { moveDown(index) }) {
                                Label("Move Down", systemImage: "arrow.down")
                            }
                            Button(role: .destructive, action: { deleteItem(index) }) {
                                Label("Delete", systemImage: "trash")
                            }
                        } label: {
                            Image(systemName: "ellipsis").padding(.horizontal)
                        }
                    }
                case .web:
                    HStack {
                        WebAddView(webText: Binding(
                            get: { component.content },
                            set: { newContent in
                                if let index = components.firstIndex(where: { $0.id == component.id }) {
                                    components[index].content = newContent
                                }
                            }
                        ))
                        Spacer()
                        Menu {
                            Button(action: { moveUp(index) }) {
                                Label("Move Up", systemImage: "arrow.up")
                            }
                            Button(action: { moveDown(index) }) {
                                Label("Move Down", systemImage: "arrow.down")
                            }
                            Button(role: .destructive, action: { deleteItem(index) }) {
                                Label("Delete", systemImage: "trash")
                            }
                        } label: {
                            Image(systemName: "ellipsis").padding(.horizontal)
                        }
                    }
                case .divider:
                    DividerView()
                    
                case .photo:
                    Text("Hello")
                    
                }
            }
            
        }
        
    }
    
    func boldItem() {
        // Functionality for bolding text
    }
    
    func moveUp(_ index: Int) {
        guard index > 0 else { return } // Ensure index is not out of bounds
        components.swapAt(index, index - 1)
    }
    
    func moveDown(_ index: Int) {
        guard index < components.count - 1 else { return } // Ensure index is not out of bounds
        components.swapAt(index, index + 1)
    }
    
    func deleteItem(_ index: Int) {
        components.remove(at: index)
    }
}

#Preview {
    AddObjectView()
}
