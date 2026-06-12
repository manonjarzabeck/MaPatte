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
                    Spacer()
                        .frame(height:4)
                    
                    ForEach(Veterinarian.cliniques) { veterinarian in
                        VeterinarianCard(veterinarian: veterinarian)}
                }
            }
            
            .navigationTitle("Vétérinaires")
            
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease")
                    }
                }
                
                ToolbarSpacer(.flexible, placement: .bottomBar)
                
                ToolbarItem(placement: .bottomBar) {
                    Button
                        {
                    } label: {
                        Text("Urgence")
                            .font(.title3)
                            .foregroundStyle(.white)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.accent)
                }
                
                ToolbarSpacer(.flexible, placement: .bottomBar)
                
                ToolbarItem(placement: .bottomBar) {
                    Button {
                    } label: {
                        Image(systemName: "plus")

                    }
                }
            }
        }
    }
}
#Preview {
    VeterinarianRecordsScene()
}
