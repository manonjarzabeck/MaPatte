//
//  AnimalInfoSheet.swift
//  MaPatte
//
//  Created by apprenant134 on 11/06/2026.
//

import SwiftUI

struct AnimalInfoSheet: View {
    private let athena = Animal.athena
    
    var body: some View {
        
        VStack(spacing: 32) {
            VStack(spacing: 12) {
                AnimalInfoSectionTitle(sectionTitle: "Identité")
                AnimalInfoRow(property: "Genre", value: athena.gender.name)
                Divider()
                AnimalInfoRow(property: "Espèce", value: athena.species.name)
                Divider()
            }
        
            VStack(spacing: 12) {
                AnimalInfoSectionTitle(sectionTitle: "État Vaccinal")
                AnimalInfoRow(property: "Rage", value: "Oui")
                Divider()
                AnimalInfoRow(property: "CHPPi", value: "Oui")
                Divider()
                AnimalInfoRow(property: "Leshmaniose", value: "Non")
                Divider()
            }
        }
    }
}

#Preview {
    AnimalInfoSheet()
}
