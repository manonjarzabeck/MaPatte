//
//  CalendarScene.swift
//  MaPatte
//
//  Created by Mathieu Nivelles on 04/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//

import SwiftUI

struct CalendarScene: View {
    private let items: [CalendarItem]
    
    @State private var visibleAnimals: [VisibleAnimal] = []
    
    init() {
        self.items = CalendarItem.examples
        self.visibleAnimals = []
        
        let animalNames = self.items.map(\.animal.name)
        
        let nameSet = Set(animalNames)
        
        let vAnimals = nameSet
            .map {
                VisibleAnimal(name: $0,
                              isOn: true)
            }.sorted {
                $0.name.localizedCaseInsensitiveCompare($1.name) == .orderedAscending
            }

        self._visibleAnimals = State(initialValue: vAnimals)
    }
    
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
                        Menu {
                            animalFilterView
                        } label: {
                            Icon.filter.image
                                .contentShape(.rect)
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
    
    private var todayCellID: UUID? {
        groupedItems
            .filter { $0.date.isToday }
            .first?.list.first?.id
    }
    
    private var groupedItems: [(date: Date, list: [CalendarItem])] {
        let filteredItems = items.filter { item in
            visibleAnimals.filter(\.isOn).contains(where: { $0.name == item.animal.name })
        }
        
        let dict = Dictionary(grouping: filteredItems) { item in
            var date = Date.now
            
            switch item.kind {
            case .appointment(start: let startDate, end: _):
                date = startDate
            case .birthday:
                date = item.animal.birthday.birthdayOfCurrentYear
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
                    newKey = first.animal.birthday.birthdayOfCurrentYear
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
    
    private func sectionHeaderText(date: Date) -> String {
        "\(date.formatted(.dateTime.weekday(.wide)).localizedCapitalized) - \(date.formatted(date: .long, time: .omitted))"
    }
    
    private struct VisibleAnimal: Identifiable, Equatable {
        let name: String
        var isOn: Bool
        
        var id: String {
            name
        }
    }

    private var animalFilterView: some View {
        Section {
            ForEach(visibleAnimals) { animal in
                if let firstIndex = visibleAnimals.firstIndex(where: { animal.name == $0.name }) {
                    Toggle(animal.name,
                           isOn: $visibleAnimals[firstIndex].isOn)
                }
            }
        }
    }
}

#Preview {
    CalendarScene()
}
