//
//  VeterinarianModel.swift
//  MaPatte
//
//  Created by Manon  on 11/06/2026.
//

import SwiftUI

struct Veterinarian: Identifiable {
    let id = UUID()
    var nom: String
    var animals: [Animal]
    var openingHours: String
    var telephone: String
    var courriel: String
    var siteweb: String
    var adresse: String
    var ville: String
    var pays: String
    var imageName: String
    var isOpen: Bool
    
    
   static let cliniques = [
    Veterinarian(nom: "Les Vétérinaires du Bel Air", animals: [.hermes, .athena], openingHours: "8h30 - 20h00", telephone: "+33 1 87 46 20 12", courriel: "contact@veterinairesdubelair.fr", siteweb: "veterinairesdubelair.fr", adresse: "29 Rue du Sahel", ville:"75012 Paris", pays:"France", imageName: "BelAir", isOpen: true),
    Veterinarian(nom: "Les Vétos Parisiens", animals: [.hades], openingHours: "9h00 - 19h30", telephone: "+33 1 78 91 07 10", courriel: "contact@lesvetosparisiens.fr", siteweb: "lesvetosparisiens.fr", adresse: "45 Avenue de Suffren", ville: "75007 Paris", pays: "France", imageName: "VetoParisien", isOpen: false)
    ]
}
