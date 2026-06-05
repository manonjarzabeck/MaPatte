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
  let animal: Animal
  
  enum Kind {
    case birthday
    case event(Date)
    case appointment(start: Date, end: Date)
  }
}

extension CalendarItem {
  
  static let previewExamples: [CalendarItem] = [
    .init(title: "Sint nihil non accusamus molestiae Veniam Beatae Corrupti",
          kind: .appointment(start: Date.from(year: 2026, month: 06, day: 02, hour: 10, minute: 30),
                             end: Date.from(year: 2026, month: 06, day: 02, hour: 12, minute: 00)),
          animal: .athena),
    .init(title: "Voluptatem Dolorem Quos",
          kind: .event(Date.now),
          animal: .hades),
    .init(title: "Est Alias",
          kind: .event(Date.from(year: 2026, month: 06, day: 05)),
          animal: .hermes),
    .init(title: "Anniversaire de Hermès",
          kind: .birthday,
          animal: .hermes)
  ]
  
  static let examples: [CalendarItem] = [
    .init(
      title: "Vaccination contre la rage",
      kind: .event(.from(year: 2026, month: 5, day: 2)),
      animal: .hermes
    ),
    .init(
      title: "Rendez-vous avec Dr Munster",
      kind: .appointment(start: .from(year: 2026, month: 5, day: 2,
                                      hour: 18, minute: 30),
                         end: .from(year: 2026, month: 5, day: 3,
                                    hour: 19, minute: 00)),
      animal: .hermes
    ),
    .init(
      title: "Opération du foie",
      kind: .appointment(start: .from(year: 2026, month: 6, day: 15,
                                      hour: 12, minute: 20),
                         end: .from(year: 2026, month: 6, day: 15,
                                    hour: 14, minute: 20)),
      animal: .hermes
    ),
    .init(
      title: "Visite chez Icare",
      kind: .event(Date.now),
      animal: .hermes
    ),
    .init(
      title: "Anniversaire d'Athéna",
      kind: .birthday,
      animal: .athena
    ),
    .init(
      title: "Visite trimestrielle",
      kind: .event(.from(year: 2026, month: 5, day: 5)),
      animal: .athena
    ),
    .init(
      title: "Visite trimestrielle - rappel",
      kind: .appointment(start: .from(year: 2026, month: 7, day: 10,
                                      hour: 15, minute: 00),
                         end: .from(year: 2026, month: 7, day: 10,
                                    hour: 15, minute: 30)),
      animal: .athena
    ),
    .init(
      title: "Visite trimestrielle",
      kind: .appointment(start: .from(year: 2026, month: 6, day: 15,
                                      hour: 10, minute: 30),
                         end: .from(year: 2026, month: 6, day: 15,
                                    hour: 11, minute: 00)),
      animal: .hades
    ),
    .init(
      title: "Stérilisation - opération",
      kind: .appointment(start: .from(year: 2026, month: 6, day: 22,
                                      hour: 18, minute: 30),
                         end: .from(year: 2026, month: 6, day: 22,
                                    hour: 19, minute: 00)),
      animal: .hades
    ),
  ]
}
