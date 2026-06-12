//
//  DocumentItem.swift
//  MaPatte
//
//  Created by apprenant134 on 12/06/2026.
//

import SwiftUI

struct DocumentItem: View {
    
    var animal: Animal
    var fileExtension: String
    var title: String
    var creationDate: Date
    
    var body: some View {
        HStack(spacing: 12) {
            fileExtensionIcon
            
            labels
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var fileExtensionIcon: some View {
        RoundedRectangle(cornerRadius: 12,
                         style: .continuous)
        .fill(animal.color.primary.gradient)
            .frame(width: 48, height: 48)
            .overlay{
                Text(fileExtension)
                    .font(.system(size: 17,
                                  weight: .bold,
                                  design: .rounded))
                    .textCase(.uppercase)
                    .foregroundStyle(.white)
            }
    }
    
    var labels: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.headline)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
            
            HStack(spacing: 8) {
                Text("\(creationDate.formatted(date: .numeric, time: .omitted)) à \(creationDate.formatted(date: .omitted, time: .shortened))")
                
                Circle()
                    .frame(width: 5, height: 5)
                
                Text(animal.name)
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    DocumentItem(animal: .athena, fileExtension: "pdf", title: "Ordonnances - Dr Munster", creationDate: Date.now)
}
