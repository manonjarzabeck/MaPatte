//
//  Header.swift
//  MaPatte
//
//  Created by apprenant134 on 10/06/2026.
//

import SwiftUI

struct Header: View {
    let animal: Animal

    
    var body: some View {
        HStack{
            
            Text("Fiche Médicale")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            animal.picture
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .padding(4)
                .overlay{
                    Circle()
                        .stroke(animal.color.off, lineWidth: 4)
            }
        }
    }
}

#Preview {
    Header(animal: .athena)
}
