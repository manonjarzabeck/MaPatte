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
        VStack(alignment: .leading, spacing: 20) {
            HStack(alignment: .top, spacing: .zero) {
                VStack(alignment: .leading, spacing: 6) {
                    Text(veterinarian.nom)
                        .font(.title3.weight(.bold))
                    
                    HStack(spacing: 8) {
                        ForEach(0..<veterinarian.animals.count, id: \.self) { index in
                            Text(veterinarian.animals[index].name)
                                .font(.subheadline.weight(.medium))
                                .foregroundStyle(veterinarian.animals[index].color.primary)
                            
                            if index < veterinarian.animals.count - 1 {
                                Circle()
                                    .fill(Color.secondary)
                                    .frame(width: 5, height: 5)
                            }
                        }
                    }
                }
                
                Spacer(minLength: 16)
                
                Image (veterinarian.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(.rect(cornerRadius: 16, style: .continuous))
            }
            
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: .zero) {
                    Text("Horaires")
                        .font(.headline.weight(.semibold))
                    
                    Spacer(minLength: 16)
                    
                    Text(veterinarian.isOpen ? "Ouvert" : "Fermé")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(
                            veterinarian.isOpen
                            ? Color.green
                            : Color.red
                        )
                        .brightness(-0.2)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background {
                            Capsule()
                                .fill(veterinarian.isOpen
                                      ? Color.green.quinary
                                      : Color.red.quinary)
                        }
                }
                
                HStack(spacing: .zero) {
                    Text("Lun. - Ven.")
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(.secondary)
                    
                    Spacer(minLength: 16)
                    
                    Text(veterinarian.openingHours)
                        .font(.subheadline.weight(.medium))
                        .foregroundStyle(.primary)
                }
                
                HStack(spacing: .zero) {
                    Text("Dimanche")
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(.secondary)
                    
                    Spacer(minLength: 16)
                    
                    Text("Fermé")
                        .font(.subheadline.weight(.medium))
                        .foregroundStyle(.primary)
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Détails")
                    .font(.headline.weight(.semibold))
                
                HStack(spacing: .zero) {
                    Text("Téléphone")
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(.secondary)
                    
                    Spacer(minLength: 16)
                    
                    Text(veterinarian.telephone)
                        .font(.subheadline.weight(.medium))
                        .foregroundStyle(.accent)
                }
                
                HStack(spacing: .zero) {
                    Text("Courriel")
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(.secondary)
                    
                    Spacer(minLength: 16)
                    
                    Text(veterinarian.courriel)
                        .font(.subheadline.weight(.medium))
                        .foregroundStyle(.accent)
                }
                
                HStack(spacing: .zero) {
                    Text("Site Web")
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(.secondary)
                    
                    Spacer(minLength: 16)
                    
                    Text(veterinarian.siteweb)
                        .font(.subheadline.weight(.medium))
                        .foregroundStyle(.accent)
                }
                
                HStack(spacing: .zero) {
                    Text("Adresse")
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(.secondary)
                    
                    Spacer(minLength: 16)
                    
                    Text("\(veterinarian.adresse)\n\(veterinarian.ville)\n\(veterinarian.pays)")
                        .font(.subheadline.weight(.medium))
                        .multilineTextAlignment(.trailing)
                        .foregroundStyle(.primary)
                }
            }
        }
        .padding(20)
        .overlay {
            RoundedRectangle(cornerRadius: 32,
                             style: .continuous)
            .strokeBorder(Color(uiColor: .systemGray5),
                          lineWidth: 1)
        }
    }
}


#Preview {
    VeterinarianCard(veterinarian: Veterinarian.cliniques[0])
        .padding()
}
