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
            
            MedicalSheetScene()
                .tabItem{
                    Label("Fiche", systemImage: "info.circle")
                }
            
            CalendarScene()
                .tabItem{
                    Label("Calendrier", systemImage: "calendar")
                }
            DocumentsScene()
                .tabItem{
                    Label("Documents", systemImage: "doc")
                }
            VeterinarianRecordsScene()
                .tabItem{
                    Label("Vétérinaire", systemImage: "stethoscope")
                }
        }
    }
}

#Preview {
    AppTabBar()
}
