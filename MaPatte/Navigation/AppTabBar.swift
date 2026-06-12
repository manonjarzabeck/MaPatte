//
//  AppTabBar.swift
//  MaPatte
//
//  Created by Manon  on 08/06/2026.
//

import SwiftUI

struct AppTabBar: View {
    var body: some View {
        TabView {
            Tab("Fiche",
                systemImage: Icon.medicalSheetTab.systemName) {
                MedicalSheetScene()
            }
            
            Tab("Calendrier",
                systemImage: Icon.calendarTab.systemName) {
                NavigationStack {
                    CalendarScene()
                }
            }
            
            Tab("Documents",
                systemImage: Icon.documentsTab.systemName) {
                DocumentsScene()
            }
            
            Tab("Vétérinaires",
                systemImage: Icon.veterinarianRecordsTab.systemName) {
                VeterinarianRecordsScene()
            }
        }
    }
}

#Preview {
    AppTabBar()
}
