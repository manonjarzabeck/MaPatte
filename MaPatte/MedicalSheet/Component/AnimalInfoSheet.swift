//
//  AnimalInfoSheet.swift
//  MaPatte
//
//  Created by apprenant134 on 11/06/2026.
//

import SwiftUI

struct AnimalInfoSheet: View {
    let animal: Animal
    
    var body: some View {
        
        VStack(spacing: 32) {
            VStack(spacing: 12) {
                AnimalInfoSectionTitle(sectionTitle: "Identité")
                
                AnimalInfoRow(property: "Genre",
                              value: animal.gender.name)
                
                Divider()
                
                AnimalInfoRow(property: "Espèce",
                              value: animal.species.name)
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
    AnimalInfoSheet(animal: .athena)
}
