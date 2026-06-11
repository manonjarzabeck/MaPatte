//
//  AnimalInfoSectionTitle.swift
//  MaPatte
//
//  Created by apprenant134 on 11/06/2026.
//

import SwiftUI

struct AnimalInfoSectionTitle: View {
    
    var sectionTitle: String
    
    var body: some View {
        
        HStack{
            Text(sectionTitle)
                .font(.system(size: 20))
                .fontWeight(.bold)
            Spacer()
            
        }
        .padding(.bottom, 4)
    }
}

#Preview {
    AnimalInfoSectionTitle(sectionTitle: "Identité")
}
