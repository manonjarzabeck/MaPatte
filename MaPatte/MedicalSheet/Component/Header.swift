//
//  Header.swift
//  MaPatte
//
//  Created by apprenant134 on 10/06/2026.
//

import SwiftUI

struct Header: View {
    let animalAvatar : ImageResource
    let animalColorCard : Color
    
    var body: some View {
        HStack{
            
            Text("Fiche Médicale")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            Image(animalAvatar)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .padding(4)
                .overlay{
                    Circle()
                    .stroke(animalColorCard, lineWidth: 4)
            }
        }
        .frame(width: 361, height: 88)
    }
}

#Preview {
    Header(animalAvatar: .animalAthena,
           animalColorCard: AnimalColor.pink.off)
}
