//
//  AnimalColor.swift
//  MaPatte
//
//  Created by Mathieu Nivelles on 05/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//

import SwiftUI

struct AnimalColor {
    let primary: Color
    let off: Color
    
    let cardPrimary: Color
    let cardSecondary: Color
    let cardBackground: Color
}

extension AnimalColor {
    
    static let blue: AnimalColor = .init(
        primary: .init(.Animal.bluePrimary),
        off: .init(.Animal.blueOff),
        cardPrimary: .init(.Animal.blueCardPrimary),
        cardSecondary: .init(.Animal.blueCardSecondary),
        cardBackground: .init(.Animal.blueCardBackground)
    )
    
    static let pink: AnimalColor = .init(
        primary: .init(.Animal.pinkPrimary),
        off: .init(.Animal.pinkOff),
        cardPrimary: .init(.Animal.pinkCardPrimary),
        cardSecondary: .init(.Animal.pinkCardSecondary),
        cardBackground: .init(.Animal.pinkCardBackground)
    )
    
    static let teal: AnimalColor = .init(
        primary: .init(.Animal.tealPrimary),
        off: .init(.Animal.tealOff),
        cardPrimary: .init(.Animal.tealCardPrimary),
        cardSecondary: .init(.Animal.tealCardSecondary),
        cardBackground: .init(.Animal.tealCardBackground)
    )
}
