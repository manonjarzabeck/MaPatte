//
//  Ficheheader.swift
//  MaPatte
//
//  Created by apprenant134 on 10/06/2026.
//

import SwiftUI

struct Ficheheader: View {
    
    let animalAvatar: ImageResource
    let animalColorCard: Color
    let animalColorName: Color
    let animalName: String
    let animalAge: Int
    
    var body: some View {
        VStack{
            Image(animalAvatar)
                .resizable()
                .scaledToFill()
                .frame(width: 168, height: 168)
                .clipShape(RoundedRectangle(cornerRadius: 20 , style: .continuous))
                .padding(8)
                .overlay{
                    RoundedRectangle(cornerRadius: 26, style: .continuous)
                        .stroke(animalColorCard, lineWidth: 4)
                    
                }
            
            Text(animalName)
                .multilineTextAlignment(.center)
                .font(.system(size: 24))
                .fontWeight(.bold)
                .foregroundStyle(animalColorName)
            
            Text("\(animalAge) ans")
                .font(.system(size: 20))
                .fontWeight(.semibold)
            
        }
    }
}

#Preview {
    Ficheheader(animalAvatar: .animalAthena,
                animalColorCard: AnimalColor.pink.off,
                animalColorName: AnimalColor.pink.primary,
                animalName: "Athéna", animalAge: 5)
}
