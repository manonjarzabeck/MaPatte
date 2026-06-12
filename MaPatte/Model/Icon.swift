//
//  Icon.swift
//  MaPatte
//
//  Created by Mathieu Nivelles on 05/06/2026.
//  Copyright © 2026 Mathieu Nivelles. All rights reserved.
//

import SwiftUI

enum Icon {
    case add
    case filter
    case settings
    case sort
    case share
    case edit
    case calendarEmpty
    case calendarTab
    case documentsTab
    case medicalSheetTab
    case veterinarianRecordsTab
    
    var systemName: String {
        switch self {
        case .add:
            "plus"
        case .filter:
            "line.3.horizontal.decrease"
        case .settings:
            "gear"
        case .sort:
            "arrow.up.arrow.down"
        case .share:
            "square.and.arrow.up"
        case .edit:
            "square.and.pencil"
        case .calendarEmpty:
            "ellipsis.calendar"
        case .calendarTab:
            "calendar"
        case .documentsTab:
            "doc"
        case .medicalSheetTab:
            "info.circle"
        case .veterinarianRecordsTab:
            "stethoscope"
        }
    }
    
    var image: Image {
        Image(systemName: systemName)
    }
}
