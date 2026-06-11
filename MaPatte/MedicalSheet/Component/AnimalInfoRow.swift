//
//  AnimalInfoRow.swift
//  MaPatte
//
//  Created by apprenant134 on 11/06/2026.
//

import SwiftUI

struct AnimalInfoRow: View {
    
    var property: String
    var value: String
    
    var body: some View {
        HStack(alignment: .top, spacing: .zero) {
            
            Text(property)
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundStyle(.secondary)
            
            Spacer(minLength: 16)
            
            Text(value)
                .font(.subheadline)
                .fontWeight(.regular)
                .multilineTextAlignment(.trailing)
        }
    }
}

#Preview {
    AnimalInfoRow(property: "Genre", value: "Femelle ")
}
