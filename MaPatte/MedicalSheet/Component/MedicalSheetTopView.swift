//
//  MedicalSheetTopView.swift
//  MaPatte
//
//  Created by apprenant134 on 10/06/2026.
//

import SwiftUI

struct MedicalSheetTopView: View {
    let animal: Animal
    
    var body: some View {
        VStack{
            animal.picture
                .resizable()
                .scaledToFill()
                .frame(width: 144, height: 144)
                .clipShape(.rect(cornerRadius: 28,
                                 style: .continuous))
                .padding(12)
                .overlay{
                    RoundedRectangle(cornerRadius: 40, style: .continuous)
                        .strokeBorder(animal.color.off,
                                      lineWidth: 6)
                }
            
            Text(animal.name)
                .multilineTextAlignment(.center)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(animal.color.primary)
            
            Text(animal.birthday.ageString)
                .font(.title3)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    MedicalSheetTopView(animal: .athena)
}
