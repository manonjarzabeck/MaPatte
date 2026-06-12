//
//  VeterinarianCard.swift
//  MaPatte
//
//  Created by Manon  on 11/06/2026.
//

import SwiftUI

struct VeterinarianCard: View {
    
    let veterinarian: Veterinarian
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            
            HStack(alignment: .top) {
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    Text(veterinarian.nom)
                        .font(.title2.bold())
                    HStack {
                        ForEach(0..<veterinarian.animals.count, id: \.self) { index in
                            Text(veterinarian.animals[index].name)
                                .font(.subheadline)
                                .foregroundStyle(veterinarian.animals[index].color.primary)
                            
                            if index < veterinarian.animals.count - 1 {
                                Circle()
                                    .fill(Color.secondary)
                                    .frame(width: 5, height: 5)
                            }
                        }
                    }
                }
                    Spacer()
                    Image (veterinarian.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                Spacer()
                    .frame(height: 4)
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Horaires")
                            .font(.title3.bold())
                        
                        Spacer()
                        Text(veterinarian.isOpen ? "Ouvert" : "Fermé")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background (
                                veterinarian.isOpen ? .green.opacity(0.1): .red.opacity(0.1)
                            )
                            .foregroundStyle(
                                veterinarian.isOpen ? .green : .red
                            )
                            .clipShape(Capsule())
                        
                    }
                    
                    HStack {
                        Text("Lun. - Ven.")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text(veterinarian.openingHours)
                            .foregroundStyle(.primary)
                    }
                    HStack {
                        Text("Dimanche")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text("Fermé")
                            .foregroundStyle(.primary)
                    }
                    Spacer()
                        .frame(height: 8)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Détails")
                            .font(.title3.bold())
                        HStack {
                            Text("Téléphone")
                                .foregroundStyle(.secondary)
                            Spacer()
                            Text(veterinarian.telephone)
                                .foregroundStyle(.accent)
                        }
                        HStack {
                            Text("Courriel")
                                .foregroundStyle(.secondary)
                            Spacer()
                            Text(veterinarian.courriel)
                                .foregroundStyle(.accent)
                        }
                        HStack {
                            Text("Site Web")
                                .foregroundStyle(.secondary)
                            Spacer()
                            Text(veterinarian.siteweb)
                                .foregroundStyle(.accent)
                        }
                        HStack {
                            Text("Adresse")
                                .foregroundStyle(.secondary)
                            Spacer()
                            VStack(alignment: .trailing, spacing: 2) {
                                Text(veterinarian.adresse)
                                Text(veterinarian.ville)
                                Text(veterinarian.pays)
                            }
                            .foregroundStyle(.primary)
                        }
                    }
                }
            }
        
            .padding()
            .background(.background)
            .overlay(RoundedRectangle(cornerRadius: 16)
                .stroke(.gray.opacity(0.2))
            )
        }
    }


#Preview {
    VeterinarianCard(veterinarian: Veterinarian.cliniques[0])
}
