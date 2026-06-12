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
                creationDate: Date.now
            )
            
            DocumentItem(
                animal: .hermes,
                fileExtension: "png",
                title: "Scanner - Opération du foie",
                creationDate: Date.now
            )
            
            DocumentItem(
                animal: .athena,
                fileExtension: "pdf",
                title: "Compte rendu de visite trimestriel",
                creationDate: Date.now
            )
            
            DocumentItem(
                animal: .hades,
                fileExtension: "pdf",
                title: "Analyse de sang - Clinique Miro",
                creationDate: Date.now
            )

            DocumentItem(
                animal: .athena,
                fileExtension: "png",
                title: "Passeport européen de Athéna",
                creationDate: Date.now
            )
            
            DocumentItem(
                animal: .athena,
                fileExtension: "pdf",
                title: "Certificat de stérélisation de Athéna",
                creationDate: Date.now
            )
            
            DocumentItem(
                animal: .athena,
                fileExtension: "png",
                title: "Certificat de stérélisation de Athéna",
                creationDate: Date.now
            )
            
            DocumentItem(
                animal: .hermes,
                fileExtension: "pdf",
                title: "Identifaction de puce électronique de Hermès",
                creationDate: Date.now
            )
        }
        .listStyle(.inset)
    }
}

#Preview {
    DocumentList()
}
