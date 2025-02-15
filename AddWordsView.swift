import SwiftUI
import SwiftData
struct AddWordsView: View {
    @StateObject private var viewModel = AddWordViewModel()
    @Environment(\.dismiss) private var dismiss
    @State private var word: String = ""
    @State private var partOfSpeech: String = ""
    @State private var definition: String = ""
    @State private var etymology: String? = ""
    @State private var example: String? = ""
    @Environment(\.modelContext) var modelContext
    
    let partsOfSpeech = ["Noun", "Verb", "Adjective", "Adverb", "Pronoun", "Conjunction", "Interjection"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Word Details")) {
                    TextField("Word", text: $word)
                    TextField("Definition", text: $definition)
                    Picker("Part of Speech", selection: $partOfSpeech) {
                        ForEach(partsOfSpeech, id: \.self) {
                            Text($0)
                        }
                    }
                    TextField("Etymology (optional)", text: $etymology.bound)
                    TextField("Example (optional)", text: $example.bound)
                }
                Button {
                    print("Clicked")
                    let newWord = Word(
                        word: word,
                        definition: definition,
                        partOfSpeech: partOfSpeech,
                        etymology: etymology,
                        examples: example.map { [$0] },
                        dateCreated: .now
                    )
                    modelContext.insert(newWord)
                    print(newWord.word)
                    dismiss()
                } label: {
                    Text("Save Word")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                .disabled(viewModel.word.isEmpty || viewModel.definition.isEmpty)
                
                
                
            }
            .navigationTitle("Add Word")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            }
        }
    }
    
    
}

extension Binding where Value == String? {
    var bound: Binding<String> {
        Binding<String>(
            get: { self.wrappedValue ?? "" },
            set: { self.wrappedValue = $0 }
        )
    }
}

#Preview {
    AddWordsView()
}
