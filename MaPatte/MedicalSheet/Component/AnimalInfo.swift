//
//  AnimalInfo.swift
//  MaPatte
//
//  Created by apprenant134 on 11/06/2026.
//

import SwiftUI

struct AnimalInfo: View {
    
    @State private var viewSelected = 0
    
    var body: some View {
        
        VStack(spacing: 32) {
            Picker("view", selection:$viewSelected) {
                Text("Fiche").tag(0)
                Text("Traitement").tag(1)
            }
            .pickerStyle(.segmented)
            
            Group {
                if viewSelected == 0 {
                    AnimalInfoSheet()
                        .transition(.blurReplace)
                } else {
                    AnimalInfoTreatment()
                        .transition(.blurReplace)
                }
            }
        }
        .animation(.snappy, value: viewSelected)
    }
}

#Preview {
    AnimalInfo()
}
