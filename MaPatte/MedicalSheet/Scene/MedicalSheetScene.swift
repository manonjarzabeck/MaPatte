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
        PageWithBottomToolbar {
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
                .fullScreenCover(isPresented: $isAnimalPickerPresented) {
                    AnimalPickerScene { newAnimal in
                        animal = newAnimal
                    }
                }
            }
        } toolbar: {
            HStack(spacing: .zero) {
                GlassIconButton(systemName: Icon.share.systemName,
                                action: {})
                
                Spacer(minLength: 12)
                
                GlassIconButton(systemName: Icon.edit.systemName,
                                action: {})
            }
        }
    }
}

#Preview {
    MedicalSheetScene()
}
