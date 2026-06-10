//
//  AnimalPickerScene.swift
//  MaPatte
//  
//  Created by Mathieu Nivelles on 10/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//  

import SwiftUI

struct AnimalPickerScene: View {
    var body: some View {
        NavigationStack {
            List {
                
            }
            .navigationTitle("Animal")
            .toolbarTitleDisplayMode(.inlineLarge)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(role: .close) {
                        
                    }
                }
            }
        }
    }
}

#Preview {
    AnimalPickerScene()
}
