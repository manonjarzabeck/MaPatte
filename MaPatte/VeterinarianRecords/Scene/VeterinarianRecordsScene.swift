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
        PageWithBottomToolbar {
            NavigationStack {
                List {
                    ForEach(Veterinarian.cliniques) { veterinarian in
                        VeterinarianCard(veterinarian: veterinarian)
                            .listRowSeparator(.hidden)
                            .listRowInsets(.vertical, 8)
                    }
                }
                .listStyle(.inset)
                .navigationTitle("Vétérinaires")
            }
        } toolbar: {
            HStack(spacing: .zero) {
                GlassIconButton(systemName: Icon.filter.systemName,
                                action: {})
                
                Spacer(minLength: 12)
                
                GlassLabelButton(label: "Urgence",
                                 isProminent: true,
                                 action: {})
                
                Spacer(minLength: 12)
                
                GlassIconButton(systemName: Icon.add.systemName,
                                action: {})
            }
        }

        
    }
}
#Preview {
    VeterinarianRecordsScene()
}
