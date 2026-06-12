//
//  ContentView.swift
//  MaPatte
//
//  Created by Manon  on 03/06/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Fiche", systemImage: "info.circle") {
                MedicalSheetScene()
            }
            
            Tab("Calendrier", systemImage: "calendar") {
                NavigationStack {
                    CalendarScene()
                }
            }
            
            Tab("Documents", systemImage: "doc") {
                DocumentsScene()
            }
            
            Tab("Vétérinaires", systemImage: "stethoscope") {
                VeterinarianRecordsScene()
            }
        }
    }
}

#Preview {
    ContentView()
}
