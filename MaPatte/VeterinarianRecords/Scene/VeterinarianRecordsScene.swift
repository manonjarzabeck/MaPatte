//
//  VeterinaryRecordsScene.swift
//  MaPatte
//
//  Created by Manon  on 08/06/2026.
//

import SwiftUI

struct VeterinarianRecordsScene: View {
    
    @State private var veterinarian = Veterinarian.cliniques
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    ForEach(Veterinarian.cliniques) { veterinarian in
                        VeterinarianCard(veterinarian: veterinarian)
                    }
                }
            }
            .contentMargins(.horizontal, 17, for: .scrollContent)
            .navigationTitle("Vétérinaires")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                    } label: {
                        Icon.filter.image
                    }
                }
                
                ToolbarSpacer(.flexible, placement: .bottomBar)
                
                ToolbarItem(placement: .bottomBar) {
                    Button
                        {
                    } label: {
                        Text("Urgence")
                    }
                    .buttonStyle(.glassProminent)
                }
                
                ToolbarSpacer(.flexible, placement: .bottomBar)
                
                ToolbarItem(placement: .bottomBar) {
                    Button {
                    } label: {
                        Icon.add.image
                    }
                }
            }
        }
    }
}
#Preview {
    VeterinarianRecordsScene()
}
