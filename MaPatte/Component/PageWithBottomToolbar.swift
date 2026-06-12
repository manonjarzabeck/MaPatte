//
//  PageWithBottomToolbar.swift
//  MaPatte
//  
//  Created by Mathieu Nivelles on 12/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//  

import SwiftUI

struct PageWithBottomToolbar<PageView: View, ToolbarView: View>: View {
    let page: PageView
    let toolbar: ToolbarView
    
    init(page: () -> PageView, toolbar: () -> ToolbarView) {
        self.page = page()
        self.toolbar = toolbar()
    }
    
    var body: some View {
        page
            .contentMargins(.bottom, 56)
            .safeAreaInset(edge: .bottom) {
                toolbar
                    .padding(.bottom, 4)
                    .padding(.horizontal)
            }
    }
}

#Preview {
    TabView {
        Tab("Test", systemImage: "airplane") {
            PageWithBottomToolbar {
                List {
                    ForEach(1...100, id: \.self) { index in
                        Text("Item \(index)")
                    }
                }
            } toolbar: {
                Button("Test") {}
            }

        }
    }
}
