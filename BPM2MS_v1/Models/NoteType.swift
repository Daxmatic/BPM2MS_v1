//
//  NoteType.swift
//  BPM2MS_v1
//
//  Created by Dax Hoes on 19/11/22.
//

import SwiftUI

enum NoteType {
        
    case half(bpm: Double)
    case halfDot(bpm: Double)
    case halfTriplet(bpm: Double)
    case quarter(bpm: Double)
    case quarterDot(bpm: Double)
    case quarterTriplet(bpm: Double)
    case eight(bpm: Double)
    case eightDot(bpm: Double)
    case eightTriplet(bpm: Double)
    case sixt(bpm: Double)
    case sixtDot(bpm: Double)
    case sixtTriplet(bpm: Double)
    case thirtysecond(bpm: Double)
    case thirtysecondDot(bpm: Double)
    case thirtysecondTriplet(bpm: Double)
    case sixtyfourth(bpm: Double)
    case sixtyfourthDot(bpm: Double)
    case sixtyfourthTriplet(bpm: Double)
    
    var description: Double {
        switch self {
            case let .half(bpm):
                return 60000 / bpm * 2
            case let .halfDot(bpm):
                return 60000 / bpm * 3
            case let .halfTriplet(bpm):
                return 60000 / bpm * 2 * 2 / 3
            case let .quarter(bpm):
                return 60000 / bpm * 1000
            case let .quarterDot(bpm):
                return 60000 / bpm / 2 * 3
            case let .quarterTriplet(bpm):
                return 60000 / bpm * 2 / 3
            case let .eight(bpm):
                return 60000 / bpm / 2
            case let .eightDot(bpm):
                return 60000 / bpm / 4 * 3
            case let .eightTriplet(bpm):
                return 60000 / bpm / 3
            case let .sixt(bpm):
                return 60000 / bpm / 4
            case let .sixtDot(bpm):
                return 60000 / bpm / 4 * 1.5
            case let .sixtTriplet(bpm):
                return 60000 / bpm / 6
            case let .thirtysecond(bpm):
                return 60000 / bpm / 8
            case let .thirtysecondDot(bpm):
                return 60000 / bpm / 8 * 1.5
            case let .thirtysecondTriplet(bpm):
                return 60000 / bpm / 8 * 2 / 3
            case let .sixtyfourth(bpm):
                return 60000 / bpm / 16
            case let .sixtyfourthDot(bpm):
                return 60000 / bpm / 16 * 1.5
            case let .sixtyfourthTriplet(bpm):
                return 60000 / bpm / 16 * 2 / 3
        }
    }
}
