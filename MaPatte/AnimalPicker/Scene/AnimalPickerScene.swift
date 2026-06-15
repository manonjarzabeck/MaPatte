//
//  AnimalPickerScene.swift
//  MaPatte
//  
//  Created by Mathieu Nivelles on 10/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//  

import SwiftUI

struct AnimalPickerScene: View {
    let onComplete: (Animal) -> Void
    
    private let animals: [Animal] = Animal.all
    
    @State private var searchText: String = ""
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(sortedAndFilteredAnimals) { animal in
                    Button {
                        onComplete(animal)
                        close()
                    } label: {
                        AnimalPickerCell(animal: animal)
                            .contentShape(.rect)
                    }
                    .buttonStyle(.plain)
                    .listRowSeparator(.hidden)
                    .listRowInsets(.vertical, Styles.itemsSpacing / 2.0)
                }
            }
            .listStyle(.inset)
            .scrollBounceBehavior(.basedOnSize)
            .searchable(text: $searchText,
                        placement: .automatic,
                        prompt: Text("Rechercher un animal"))
            .textInputAutocapitalization(.never)
            .autocorrectionDisabled(true)
            .navigationTitle("Animal")
            .toolbarTitleDisplayMode(.inlineLarge)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(role: .close, action: close)
                }
                
                DefaultToolbarItem(kind: .search,
                                   placement: .bottomBar)
                
                ToolbarSpacer(.fixed, placement: .bottomBar)
                
                ToolbarItem(placement: .bottomBar) {
                    Button("Réglages",
                           systemImage: Icon.settings.systemName) {
                        
                    }
                }
            }
        }
    }
    
    private func close() {
        dismiss()
    }
    
    private var sortedAndFilteredAnimals: [Animal] {
        guard !searchText.isEmpty else {
            return animals.sorted(by: sortAnimalsFunction)
        }
        
        let filtered = animals
            .filter { filterAnimalsFunction(animal: $0, text: searchText) }
        
        return filtered
            .sorted(by: sortAnimalsFunction)
    }
    
    private func sortAnimalsFunction(_ first: Animal,
                                     _ second: Animal) -> Bool {
        let firstWithoutDiacritic = first.name.folding(options: .diacriticInsensitive,
                                                       locale: nil)
        let secondWithoutDiacritic = second.name.folding(options: .diacriticInsensitive,
                                                         locale: nil)
        
        return firstWithoutDiacritic
            .localizedCaseInsensitiveCompare(secondWithoutDiacritic) == .orderedAscending
    }
    
    private func filterAnimalsFunction(animal: Animal, text: String) -> Bool {
        let animalWithoutDiacritic = animal.name.folding(options: .diacriticInsensitive,
                                                         locale: nil)
        let textWithoutDiacritic = text
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .folding(options: .diacriticInsensitive,
                     locale: nil)
        
        return animalWithoutDiacritic.localizedCaseInsensitiveContains(textWithoutDiacritic)
    }
}

fileprivate enum Styles {
    
    static let itemsSpacing: Double = 16
}

#Preview {
    AnimalPickerScene(onComplete: { _ in })
}
