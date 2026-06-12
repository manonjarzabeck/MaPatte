//
//  DocumentsScene.swift
//  MaPatte
//
//  Created by Manon  on 08/06/2026.
//

import SwiftUI

struct DocumentsScene: View {
    var body: some View {
        NavigationStack {
            DocumentList()
                .navigationTitle("Documents")
        }
        .toolbar{
            ToolbarItem(placement: .bottomBar) {
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.up.arrow.down")
                }
            }
            
            ToolbarSpacer(.flexible, placement: .bottomBar)
            
            ToolbarItem(placement: .bottomBar) {
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    DocumentsScene()
}
