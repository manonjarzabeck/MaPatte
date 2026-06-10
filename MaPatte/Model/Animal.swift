//
//  Animal.swift
//  MaPatte
//
//  Created by Mathieu Nivelles on 05/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//

import SwiftUI

struct Animal: Identifiable {
    let id = UUID()
    let name: String
    let gender: Gender
    let birthday: Date
    let species: Species
    let breed: String
    let color: AnimalColor
    let picture: Image
    
    enum Species {
        case cat
        case dog
        case rabbit
        
        var name: String {
            switch self {
            case .cat:
                "Chat"
            case .dog:
                "Chien"
            case .rabbit:
                "Lapin"
            }
        }
        
        var image: Image {
            switch self {
            case .cat:
                Image(systemName: "cat.fill")
            case .dog:
                Image(systemName: "dog.fill")
            case .rabbit:
                Image(systemName: "hare.fill")
            }
        }
    }
    
    enum Gender {
        case female
        case male
        
        var name: String {
            switch self {
            case .female:
                "Femelle"
            case .male:
                "Mâle"
            }
        }
    }
}

extension Animal {
    
    static let all: [Animal] = [
        .hermes,
        .athena,
        .hades
    ]
    
    static let athena: Animal = .init(name: "Athéna",
                                      gender: .female,
                                      birthday: .from(year: 2021,
                                                      month: 5,
                                                      day: 1),
                                      species: .cat,
                                      breed: "Sphynx",
                                      color: .pink,
                                      picture: Image(.animalAthena))
    
    static let hades: Animal = .init(name: "Hadès",
                                     gender: .male,
                                     birthday: .from(year: 2024,
                                                     month: 9,
                                                     day: 25),
                                     species: .rabbit,
                                     breed: "Lionhead",
                                     color: .blue,
                                     picture: Image(.animalHades))
    
    static let hermes: Animal = .init(name: "Hermès",
                                      gender: .male,
                                      birthday: .from(year: 2019,
                                                      month: 1,
                                                      day: 23),
                                      species: .dog,
                                      breed: "Shiba",
                                      color: .teal,
                                      picture: Image(.animalHermes))
}
