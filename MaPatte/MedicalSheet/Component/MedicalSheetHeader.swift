//
//  MedicalSheetHeader.swift
//  MaPatte
//
//  Created by apprenant134 on 10/06/2026.
//

import SwiftUI

struct MedicalSheetHeader: View {
    let animal: Animal
    let onAnimalTap: () -> Void

    var body: some View {
        HStack{
            Text("Fiche Médicale")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            Button(action: onAnimalTap) {
                animal.picture
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(.circle)
                    .padding(6)
                    .overlay{
                        Circle()
                            .strokeBorder(animal.color.off,
                                          lineWidth: 3)
                    }
            }
        }
    }
}

#Preview {
    MedicalSheetHeader(animal: .athena,
           onAnimalTap: {})
}
