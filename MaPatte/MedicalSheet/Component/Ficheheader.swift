//
//  Ficheheader.swift
//  MaPatte
//
//  Created by apprenant134 on 10/06/2026.
//

import SwiftUI

struct Ficheheader: View {
    let animal: Animal
    
    var body: some View {
        VStack{
            animal.picture
                .resizable()
                .scaledToFill()
                .frame(width: 168, height: 168)
                .clipShape(RoundedRectangle(cornerRadius: 34 , style: .continuous))
                .padding(9)
                .overlay{
                    RoundedRectangle(cornerRadius: 40, style: .continuous)
                        .stroke(animal.color.off, lineWidth: 6)
                    
                }
            
            Text(animal.name)
                .multilineTextAlignment(.center)
                .font(.system(size: 24))
                .fontWeight(.bold)
                .foregroundStyle(animal.color.primary)
            
            Text(animal.birthday.ageString)
                .font(.system(size: 20))
                .fontWeight(.semibold)
            
        }
    }
}

#Preview {
    Ficheheader(animal: .athena)
}
