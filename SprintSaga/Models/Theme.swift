//
//  Theme.swift
//  SprintSaga
//
//  Created by Jai  on 21/09/23.
//

import Foundation
import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    case pink

    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .pink, .yellow:
            return .black
        case .indigo, .magenta, .navy, .oxblood, .purple:
            return .white
        }
    }

    var mainColor: Color {
        switch self {
        case .bubblegum:
            return Color.pink
        case .buttercup:
            return Color.yellow
        case .indigo:
            return Color.blue
        case .lavender:
            return Color.mint
        case .magenta:
            return Color.blue
        case .navy:
            return Color.blue
        case .orange:
            return Color.orange
        case .oxblood:
            return Color(red: 0.5, green: 0, blue: 0)
        case .periwinkle:
            return Color.blue.opacity(0.7)
        case .poppy:
            return Color.red
        case .purple:
            return Color.purple
        case .seafoam:
            return Color.green
        case .sky:
            return Color.blue
        case .tan:
            return Color(Theme.tan.rawValue)
        case .teal:
            return Color.teal
        case .yellow:
            return Color.yellow
        case .pink:
            return Color.pink
        }
    }

    var name: String {
        return rawValue.capitalized
    }
}



