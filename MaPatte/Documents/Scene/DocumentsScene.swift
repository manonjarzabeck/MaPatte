//
//  DocumentsScene.swift
//  MaPatte
//
//  Created by Manon  on 08/06/2026.
//

import SwiftUI

struct DocumentsScene: View {
    var body: some View {
        PageWithBottomToolbar {
            NavigationStack {
                DocumentList()
                    .navigationTitle("Documents")
            }
        } toolbar: {
            HStack(spacing: .zero) {
                GlassIconButton(systemName: Icon.sort.systemName,
                                action: {})
                
                Spacer(minLength: 12)
                
                GlassIconButton(systemName: Icon.add.systemName,
                                action: {})
            }
        }
    }
}

#Preview {
    DocumentsScene()
}
