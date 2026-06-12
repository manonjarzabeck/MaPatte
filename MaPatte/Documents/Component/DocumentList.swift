//
//  DocumentList.swift
//  MaPatte
//
//  Created by apprenant134 on 12/06/2026.
//

import SwiftUI

struct DocumentList: View {
    var body: some View {
        
        List {
            DocumentItem(
                animal: .hermes,
                fileExtension: "pdf",
                title: "Ordonnances - Dr Munster",
                creationDate: .from(year: 2026,
                                    month: 5,
                                    day: 18,
                                    hour: 12,
                                    minute: 37)
            )
            
            DocumentItem(
                animal: .hermes,
                fileExtension: "png",
                title: "Scanner - Opération du foie",
                creationDate: .from(year: 2026,
                                    month: 5,
                                    day: 18,
                                    hour: 10,
                                    minute: 20)
            )
            
            DocumentItem(
                animal: .athena,
                fileExtension: "pdf",
                title: "Compte rendu de visite trimestriel",
                creationDate: .from(year: 2026,
                                    month: 5,
                                    day: 5,
                                    hour: 14,
                                    minute: 52)
            )
            
            DocumentItem(
                animal: .hades,
                fileExtension: "pdf",
                title: "Analyse de sang - Clinique Miro",
                creationDate: .from(year: 2026,
                                    month: 4,
                                    day: 24,
                                    hour: 9,
                                    minute: 17)
            )

            DocumentItem(
                animal: .athena,
                fileExtension: "png",
                title: "Passeport européen de Athéna",
                creationDate: .from(year: 2026,
                                    month: 4,
                                    day: 15,
                                    hour: 17,
                                    minute: 30)
            )
            
            DocumentItem(
                animal: .athena,
                fileExtension: "pdf",
                title: "Certificat de stérélisation de Athéna",
                creationDate: .from(year: 2026,
                                    month: 4,
                                    day: 12,
                                    hour: 8,
                                    minute: 44)
            )
            
            DocumentItem(
                animal: .hermes,
                fileExtension: "pdf",
                title: "Identifaction de puce électronique de Hermès",
                creationDate: .from(year: 2026,
                                    month: 3,
                                    day: 1,
                                    hour: 20,
                                    minute: 41)
            )
        }
        .listStyle(.inset)
        .scrollBounceBehavior(.basedOnSize)
    }
}

#Preview {
    DocumentList()
}
