//
//  AnimalPickerCell.swift
//  MaPatte
//  
//  Created by Mathieu Nivelles on 10/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//  

import SwiftUI

struct AnimalPickerCell: View {
    let animal: Animal
    
    var body: some View {
        HStack(alignment: .center,
               spacing: .zero) {
            VStack(alignment: .leading,
                   spacing: Styles.vSpacing) {
                Text(animal.name)
                    .font(Styles.titleFont)
                    .foregroundStyle(animal.color.cardPrimary)
                
                HStack(spacing: Styles.dotSpacing) {
                    Text(animal.birthday.ageString)
                    
                    dotSeparator
                    
                    Text(animal.birthday.formatted(date: .long,
                                                   time: .omitted))
                }
                .font(Styles.subtitleFont)
                .foregroundStyle(animal.color.cardSecondary)
                
                HStack(spacing: Styles.dotSpacing) {
                    Text("\(animal.species.image) \(animal.species.name)")
                    
                    dotSeparator
                    
                    Text(animal.breed)
                    
                    dotSeparator
                    
                    Text(animal.gender.name)
                }
                .font(Styles.subtitleFont)
                .textCase(.lowercase)
                .foregroundStyle(animal.color.cardSecondary)
            }
            
            Spacer(minLength: Styles.hSpacing)
            
            animal.picture
                .resizable()
                .scaledToFill()
                .frame(width: Styles.pictureSize,
                       height: Styles.pictureSize)
                .clipShape(Styles.pictureShape)
                .overlay {
                    Styles.pictureBorderShape
                        .stroke(
                            Styles.pictureBorderColor,
                            lineWidth: Styles.pictureBorderWidth)
                }
        }
        .padding(Styles.padding)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background {
            Styles.shape
                .fill(animal.color.cardBackground)
        }
    }
    
    private var dotSeparator: some View {
        Circle()
            .frame(width: Styles.dotSize,
                   height: Styles.dotSize)
    }
}

fileprivate enum Styles {
    
    static let padding: Double = 16
    static let hSpacing: Double = 16
    static let vSpacing: Double = 2
    static let shape = RoundedRectangle(cornerRadius: 20,
                                        style: .continuous)
    
    static let titleFont: Font = .title3.weight(.bold)
    
    static let subtitleFont: Font = .subheadline.weight(.medium)
    
    static let dotSize: Double = 4
    static let dotSpacing: Double = 8
    
    static let pictureSize: Double = 72
    static let pictureShape = RoundedRectangle(cornerRadius: 12,
                                               style: .continuous)
    static let pictureBorderShape = RoundedRectangle(cornerRadius: 12,
                                                     style: .continuous)
    static let pictureBorderColor = Color(uiColor: .systemBackground)
    static let pictureBorderWidth: Double = 3
}

#Preview {
    VStack {
        AnimalPickerCell(animal: .athena)
        AnimalPickerCell(animal: .hades)
        AnimalPickerCell(animal: .hermes)
    }
    .padding()
}
