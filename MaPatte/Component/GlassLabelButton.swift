//
//  GlassLabelButton.swift
//  MaPatte
//  
//  Created by Mathieu Nivelles on 12/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//  

import SwiftUI

struct GlassLabelButton: View {
    let label: String
    let isProminent: Bool
    let action: () -> Void
    
    @Environment(\.colorScheme) private var colorScheme
    
    init(label: String,
         isProminent: Bool = false,
         action: @escaping () -> Void) {
        self.label = label
        self.isProminent = isProminent
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.system(size: 18))
                .foregroundStyle(foregroundColor)
                .frame(height: 48)
                .padding(.horizontal, 20)
                .glassEffect(.regular
                    .interactive()
                    .tint(isProminent ? .accent : nil),
                             in: .capsule)
                .contentShape(.rect)
        }
        .buttonStyle(.plain)
    }
    
    private var foregroundColor: Color {
        if !isProminent {
            return .primary
        } else if colorScheme == .light {
            return .white
        } else {
            return .black
        }
    }
}

#Preview {
    VStack {
        GlassLabelButton(label: "Aujourd'hui",
                         action: {})
        
        GlassLabelButton(label: "Demain",
                         isProminent: true,
                         action: {})
    }
}
