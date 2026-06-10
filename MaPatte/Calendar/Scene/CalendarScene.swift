//
//  CalendarScene.swift
//  MaPatte
//
//  Created by Mathieu Nivelles on 04/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//

import SwiftUI

struct CalendarScene: View {
    let items: [CalendarItem] = CalendarItem.examples
    
    var body: some View {
        NavigationStack {
            ScrollViewReader { proxy in
                List {
                    ForEach(groupedItems, id: \.date) { group in
                        Section {
                            ForEach(group.list) { item in
                                CalendarCell(item: item)
                                    .id(item.id)
                            }
                        } header: {
                            Text(sectionHeaderText(date: group.date))
                                .listRowInsets(.bottom, 0)
                                .foregroundStyle(group.date.isToday
                                                 ? Color.accent
                                                 : .primary)
                        }
                        .headerProminence(.increased)
                    }
                }
                .listStyle(.inset)
                .navigationTitle("Calendrier")
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        Button("Filtrer",
                               systemImage: Icon.filter.systemName) {
                            
                        }
                    }
                    
                    ToolbarSpacer(.flexible, placement: .bottomBar)
                    
                    ToolbarItem(placement: .bottomBar) {
                        Button("Aujourd'hui") {
                            if let todayCellID {
                                withAnimation(.snappy) {
                                    proxy.scrollTo(todayCellID)
                                }
                            }
                        }
                    }
                    
                    ToolbarSpacer(.flexible, placement: .bottomBar)
                    
                    ToolbarItem(placement: .bottomBar) {
                        Button("Ajouter",
                               systemImage: Icon.add.systemName) {
                            
                        }
                    }
                }
                .onAppear {
                    if let todayCellID {
                        withAnimation(.snappy(duration: 0.1)) {
                            proxy.scrollTo(todayCellID)
                        }
                    }
                }
            }
        }
    }
    
    private var groupedItems: [(date: Date, list: [CalendarItem])] {
        let dict = Dictionary(grouping: items) { item in
            var date = Date.now
            
            switch item.kind {
            case .appointment(start: let startDate, end: _):
                date = startDate
            case .birthday:
                date = item.animal.birthday
            case .event(let startDate):
                date = startDate
            }
            
            let dateString = date.formatted(date: .numeric,
                                            time: .omitted)
            
            return dateString
        }
        
        let tupleList = dict.map { (key, value) in
            var newKey: Date = .now
            
            if let first = value.first {
                switch first.kind {
                case .appointment(start: let startDate, end: _):
                    newKey = startDate
                case .birthday:
                    newKey = first.animal.birthday
                case .event(let startDate):
                    newKey = startDate
                }
            }
            
            return (newKey, value)
        }
        
        return tupleList.sorted { first, second in
            first.0 < second.0
        }
    }
    
    private var todayCellID: UUID? {
        groupedItems
            .filter { $0.date.isToday }
            .first?.list.first?.id
    }
    
    private func sectionHeaderText(date: Date) -> String {
        "\(date.formatted(.dateTime.weekday(.wide)).localizedCapitalized) - \(date.formatted(date: .long, time: .omitted))"
    }
}

#Preview {
    CalendarScene()
}
