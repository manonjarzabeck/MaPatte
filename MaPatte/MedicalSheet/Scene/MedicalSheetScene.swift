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
