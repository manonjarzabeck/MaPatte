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
      List {
        ForEach(groupedItems, id: \.date) { group in
          Section {
            ForEach(group.list) { item in
              CalendarCell(item: item)
            }
          } header: {
            Text(group.date.formatted(date: .complete,
                                      time: .omitted))
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
            
          }
        }
        
        ToolbarSpacer(.flexible, placement: .bottomBar)
        
        ToolbarItem(placement: .bottomBar) {
          Button("Ajouter",
                 systemImage: Icon.add.systemName) {
            
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
}

#Preview {
  CalendarScene()
}
