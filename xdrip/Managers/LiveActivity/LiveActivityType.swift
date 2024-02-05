//
//  LiveActivityType.swift
//  xdrip
//
//  Created by Paul Plant on 1/1/24.
//  Copyright © 2024 Johan Degraeve. All rights reserved.
//

import Foundation

/// types of live activity
public enum LiveActivityType: Int, CaseIterable {
    
    // when adding to LiveActivityType, add new cases at the end (ie 3, ...)
    // if this is done in the middle then a database migration would be required, because the rawvalue is stored as Int16 in the coredata
    // the order of the returned enum can be defined in allCases below
    
    case disabled = 0
    case always = 1
    case urgentLow = 2
    case low = 3
    case lowHigh = 4
    case urgentLowHigh = 5
    
    var description: String {
        switch self {
        case .disabled:
            return Texts_SettingsView.liveActivityTypeDisabled
        case .always:
            return Texts_SettingsView.liveActivityTypeAlways
        case .urgentLow:
            return Texts_SettingsView.liveActivityTypeUrgentLow
        case .low:
            return Texts_SettingsView.liveActivityTypeLow
        case .lowHigh:
            return Texts_SettingsView.liveActivityTypeLowHigh
        case .urgentLowHigh:
            return Texts_SettingsView.liveActivityTypeUrgentLowHigh
        }
    }
    
}
