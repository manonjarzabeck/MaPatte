//
//  MedicalSheetScene.swift
//  MaPatte
//
//  Created by Manon  on 08/06/2026.
//

import SwiftUI

struct MedicalSheetScene: View {
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack(spacing: .zero) {
                    Header(animal: .athena)
                        .padding(.horizontal)
                    
                    VStack(spacing: 32) {
                        Ficheheader(animal: .athena)
                        AnimalInfo()
                            .padding(.horizontal)
                    }
                    
                }
            }
            .scrollBounceBehavior(.basedOnSize)
        }
    }
}

#Preview {
    MedicalSheetScene()
}
