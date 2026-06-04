//
//  CalendarItem.swift
//  MaPatte
//  
//  Created by Mathieu Nivelles on 04/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//

import SwiftUI

struct CalendarItem: Identifiable {
  let id = UUID()
  let title: String
  let kind: Kind
  let color: Color
  let animalName: String
  
  enum Kind {
    case event(Date)
    case appointment(start: Date, end: Date)
  }
}

extension CalendarItem {
  
  static let examples: [CalendarItem] = [
    .init(title: "Sint nihil non accusamus molestiae Veniam Beatae Corrupti",
          kind: .appointment(start: Date.from(year: 2026, month: 06, day: 02, hour: 10, minute: 30),
                             end: Date.from(year: 2026, month: 06, day: 02, hour: 12, minute: 00)),
          color: .red,
          animalName: "Dr. Brando Krajcik Dolor Est Quia Adipisci Similique Fuga"),
    .init(title: "Voluptatem Dolorem Quos",
          kind: .event(Date.now),
          color: .green,
          animalName: "Voluptatum"),
    .init(title: "Est Alias",
          kind: .event(Date.from(year: 2026, month: 06, day: 05)),
          color: .blue,
          animalName: "Dolor")
  ]
}
