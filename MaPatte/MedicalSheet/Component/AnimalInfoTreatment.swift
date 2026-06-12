//
//  AnimalInfoTreatment.swift
//  MaPatte
//
//  Created by apprenant134 on 11/06/2026.
//

import SwiftUI

struct AnimalInfoTreatment: View {
    
    var body: some View {
        
        VStack(spacing: 32) {
            VStack(spacing: 12) {
                AnimalInfoSectionTitle(sectionTitle: "Médicaments")
                AnimalInfoRow(property: "Milbmax", value: "3/jour")
                Divider()
                AnimalInfoRow(property: "Frontline", value:"1/jour")
                Divider()
                AnimalInfoRow(property: "Metacam", value: "200mg/jour" )
                Divider()
            }
            
            VStack(spacing: 12) {
                AnimalInfoSectionTitle(sectionTitle: "Opérations")
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
    AnimalInfoTreatment()
}
