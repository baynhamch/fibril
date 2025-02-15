//
//  MainSaveView.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 5/17/24.
//
import SwiftData
import SwiftUI

struct MainSaveView: View {
    @State private var viewModel = SaveViewModel()
    @State private var wordSheetShowing: Bool = false
    @State private var sheetShowing: Bool = false
    @Query var words: [Word]
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                VStack {
                    VStack{
                        Button {
                            wordSheetShowing.toggle()
                        } label: {
                            VStack {
                                Image(systemName: "text.word.spacing").fontWeight(.bold)
                                Text("Add Word")
                            }
                        }
                    }
                    Divider()
                    List {
                        ForEach(words) { word in
                            NavigationLink{
                                VStack(alignment: .leading) {
                                    Text(word.word)
                                        .font(.headline)
                                    Text(word.partOfSpeech)
                                    Text(word.definition)
                                }
                            } label: {
                                Text(word.word)
                                    .font(.headline)
                            }
                            
                            
                        }
                    }
                    
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            sheetShowing.toggle()
                        } label: {
                            Image(systemName: "plus")
                                .font(.title.weight(.semibold))
                                .padding()
                                .background(Color(red: 34 / 255, green: 139 / 255, blue: 34 / 255))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(radius: 4, x: 0, y: 4)
                            
                        }.sensoryFeedback(.success, trigger: sheetShowing)
                            .padding()
                    }
                }
            }
            .fullScreenCover(isPresented: $sheetShowing) { AddObjectView() }
            .fullScreenCover(isPresented: $wordSheetShowing) { AddWordsView() }
        }
    }
}

#Preview {
    //    MainSaveView(viewModel: SaveViewModel(item: Item( id: UUID(uuidString: "123e4567-e89b-12d3-a456-426614174000")!, date: .now, title: "Title Example")))
    MainSaveView()
}
