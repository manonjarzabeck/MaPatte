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
        }
    }
    
    var image: Image {
        Image(systemName: systemName)
    }
}
