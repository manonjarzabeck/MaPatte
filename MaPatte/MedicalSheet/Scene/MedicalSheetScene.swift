//
//  MedicalSheetScene.swift
//  MaPatte
//
//  Created by Manon  on 08/06/2026.
//

import SwiftUI

struct MedicalSheetScene: View {
    @State private var animal: Animal = .athena
    @State private var isAnimalPickerPresented: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: .zero) {
                    MedicalSheetHeader(animal: animal) {
                        isAnimalPickerPresented = true
                    }
                        .padding(.horizontal)
                    
                    VStack(spacing: 32) {
                        MedicalSheetTopView(animal: animal)
                        
                        AnimalInfo(animal: animal)
                            .padding(.horizontal)
                    }
                    
                }
            }
            .scrollBounceBehavior(.basedOnSize)
        }
        .fullScreenCover(isPresented: $isAnimalPickerPresented) {
            AnimalPickerScene { newAnimal in
                animal = newAnimal
            }
        }
        .toolbar{
            ToolbarItem(placement: .bottomBar) {
                
                Button {
                    
                } label: {
                    Image(systemName: "square.and.arrow.up")
                }
            }
            
            ToolbarSpacer(.flexible, placement: .bottomBar)
            
            ToolbarItem(placement: .bottomBar) {
                
                Button {
                    
                } label: {
                    Image(systemName: "square.and.pencil")
                }
            }
        }
    }
}

#Preview {
    MedicalSheetScene()
}
