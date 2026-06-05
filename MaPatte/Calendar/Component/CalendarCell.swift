//
//  CalendarCell.swift
//  MaPatte
//  
//  Created by Mathieu Nivelles on 04/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//  

import SwiftUI

struct CalendarCell: View {
  let item: CalendarItem
  
  var body: some View {
    HStack(alignment: .top,
           spacing: .zero) {
      Capsule()
        .foregroundStyle(item.animal.color.primary)
        .frame(width: Styles.indicatorWidth)
        .padding(.trailing, Styles.indicatorTextSpacing)
      
      VStack(alignment: .leading,
             spacing: Styles.titleAnimalNameSpacing) {
        Group {
          if case .birthday = item.kind {
            Text("\(Image(systemName: "birthday.cake")) \(item.title)")
          } else {
            Text(item.title)
          }
        }
        .font(Styles.titleFont)
        .foregroundStyle(Styles.titleColor)
        
        Text(item.animal.name)
          .font(Styles.animalFont)
          .foregroundStyle(Styles.animalColor)
      }
      
      if case .appointment(start: let start, end: let end) = item.kind {
        Spacer()
        
        VStack {
          Text(start.formatted(date: .omitted,
                               time: .shortened))
            .font(Styles.timeFont)
            .foregroundStyle(Styles.timeStartColor)
          
          Text(end.formatted(date: .omitted,
                             time: .shortened))
            .font(Styles.timeFont)
            .foregroundStyle(Styles.timeEndColor)
        }
        .padding(.leading, Styles.indicatorTextSpacing)
      }
    }
  }
}

fileprivate enum Styles {
  
  static let titleAnimalNameSpacing: Double = 2
  static let indicatorTextSpacing: Double = 12
  
  static let indicatorWidth: Double = 5
  
  static let titleFont: Font = .headline.weight(.semibold)
  static let titleColor: Color = .primary
  
  static let animalFont: Font = .subheadline.weight(.medium)
  static let animalColor: Color = .secondary
  
  static let timeFont: Font = .subheadline.weight(.medium)
  static let timeStartColor: Color = .primary
  static let timeEndColor: Color = .secondary
}

#Preview {
  List {
    ForEach(CalendarItem.previewExamples) { item in
      CalendarCell(item: item)
    }
  }
}
