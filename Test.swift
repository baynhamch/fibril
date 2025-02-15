//////
//////  Test.swift
//////  fibril
//////
////
//////
////
////import SwiftUI
////
////struct Test: View {
////    
////    @State private var TextE: String = ""
////    @State private var Title: String = ""
////    @State private var noteTitle: String = ""
////    @State private var linkText: String = ""
////    
////    @State private var webSheetShown: Bool = false
////    
////    @State private var viewsArray: [AnyView] = []
////    
////    var body: some View {
////        VStack {
////            TitleSaveView(noteTitle: $noteTitle)
////            ScrollView {
////                ForEach(viewsArray.indices, id: \.self) { index in
////                    viewsArray[index]
////                }
////
////                Spacer()
////            }
////            ToolBarView(viewsArray: $viewsArray, linkText: $linkText, webSheetShown: $webSheetShown)
////            
////        }
////    }
////}
////
////#Preview {
////    Test()
////}
////
////struct TextView: View {
////    @State private var TextE: String = ""
////    var body: some View {
////        TextField("Enter Thought", text: $TextE)
////    }
////}
////
////struct ToolBarView : View {
////    @Binding var viewsArray: [AnyView]
////    @Binding var linkText: String
////    @Binding var webSheetShown: Bool
////    var body: some View {
////        HStack(spacing: 30) {
////            Button() {
////                viewsArray.append(AnyView(TextView()))
////            } label: {
////                Image(systemName: "text.alignleft")
////                    .font(.title2)
////                    .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
////            }
////            Button() {
////                viewsArray.append(AnyView(DividerView()))
////            } label: {
////                Image(systemName: "line.diagonal.arrow")
////                    .font(.title2)
////                    .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
////            }
////            Button() {
////                viewsArray.append(AnyView(
////                    WebAddView())
//////                    WebSaveView(linkText: $linkText, webSheetShown: $webSheetShown))
////                )
////            } label: {
////                Image(systemName: "globe")
////                    .font(.title2)
////                    .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
////            }
////            
////     
////
////        }
////    }
////}
////
////struct DividerView: View {
////    var body: some View {
////        Divider()
////    }
////}
////struct WebAddView: View {
////    @State private var webText: String = ""
////
////    var body: some View {
////        TextField("URL...", text: $webText)
////    }
////}
//import SwiftUI
//
//

//
//struct Test: View {
//    @State private var noteTitle: String = ""
//    @State private var linkText: String = ""
//    @State private var webSheetShown: Bool = false
//    
//    @State private var components: [NoteComponent] = []
//    
//    var body: some View {
//        VStack {
//            TitleSaveView(noteTitle: $noteTitle)
//            ScrollView {
//                ForEach(components) { component in
//                    switch component.type {
//                    case .text:
//                        TextView(text: Binding(
//                            get: { component.content },
//                            set: { newContent in
//                                if let index = components.firstIndex(where: { $0.id == component.id }) {
//                                    components[index].content = newContent
//                                }
//                            }
//                        ))
//                    case .web:
//                        WebAddView(webText: Binding(
//                            get: { component.content },
//                            set: { newContent in
//                                if let index = components.firstIndex(where: { $0.id == component.id }) {
//                                    components[index].content = newContent
//                                }
//                            }
//                        ))
//                    case .divider:
//                        DividerView()
//                    }
//                }
//                Spacer()
//            }
//            ToolBarView(components: $components)
//        }
//    }
//}
//
//#Preview {
//    Test()
//}
//
////struct TitleSaveView: View {
////    @Binding var noteTitle: String
////    var body: some View {
////        TextField("Enter Title", text: $noteTitle)
////            .padding()
////            .font(.title)
////    }
////}
//import SwiftUI
//
//struct TextView: View {
//    @Binding var text: String
//    var body: some View {
//        TextField("Enter Thought", text: $text)
////            .textFieldStyle(RoundedBorderTextFieldStyle())
//            .padding()
//    }
//}
//import SwiftUI
//
//struct DividerView: View {
//    var body: some View {
//        Divider()
//    }
//}
//import SwiftUI
//
//struct WebAddView: View {
//    @Binding var webText: String
//    var body: some View {
//        TextField("URL...", text: $webText)
////            .textFieldStyle(RoundedBorderTextFieldStyle())
//            .padding()
//    }
//}
//
//import SwiftUI
//
//struct ToolBarView: View {
//    @Binding var components: [NoteComponent]
//
//    var body: some View {
//        HStack(spacing: 30) {
//            Button {
//                components.append(NoteComponent(type: .text, content: ""))
//            } label: {
//                Image(systemName: "text.alignleft")
//                    .font(.title2)
//                    .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//            }
//            Button {
//                components.append(NoteComponent(type: .divider, content: ""))
//            } label: {
//                Image(systemName: "line.diagonal.arrow")
//                    .font(.title2)
//                    .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//            }
//            Button {
//                components.append(NoteComponent(type: .web, content: ""))
//            } label: {
//                Image(systemName: "globe")
//                    .font(.title2)
//                    .foregroundStyle(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
//            }
//        }
//    }
//}
//
//struct ToolBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        ToolBarView(components: .constant([]))
//    }
//}
