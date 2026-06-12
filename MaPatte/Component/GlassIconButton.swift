//
//  GlassIconButton.swift
//  MaPatte
//  
//  Created by Mathieu Nivelles on 12/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//  

import SwiftUI

struct GlassIconButton: View {
    let icon: Image
    let action: () -> Void
    
    init(icon: Image, action: @escaping () -> Void) {
        self.icon = icon
        self.action = action
    }
    
    init(systemName: String, action: @escaping () -> Void) {
        self.icon = .init(systemName: systemName)
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            icon
                .font(.system(size: 22, weight: .regular))
                .frame(width: 48, height: 48)
                .glassEffect(.regular.interactive(),
                             in: .circle)
                .contentShape(.rect)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    VStack {
        GlassIconButton(icon: Icon.filter.image,
                        action: {})
    }
}
