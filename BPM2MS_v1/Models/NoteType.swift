//
//  NoteType.swift
//  BPM2MS_v1
//
//  Created by Dax Hoes on 19/11/22.
//

/*
 case whole
 case wholeDot
 case wholeTriplet
 */
import Foundation

var bpms = 120.0
enum NoteType {

    case half, halfDot, halfTriplet, quarter, quarterDot, quarterTriplet, eight, eightDot, eightTriplet, sixt, sixtDot, sixtTriplet, thirtysecond, thirtysecondDot, thirtysecondTriplet, sixtyfourth, sixtyfourthDot, sixtyfourthTriplet
 
    var description: Double {
        switch self {
            case .half:
                return 60000 / bpms * 2
            case .halfDot:
                return 60000 / bpms * 3
            case .halfTriplet:
                return 60000 / bpms * 2 * 2
            case .quarter:
                return 60000 / bpms * 1000
            case .quarterDot:
                return 60000 / bpms / 2 * 3
            case .quarterTriplet:
                return 60000 / bpms * 2 / 3
            case .eight:
                return 60000 / bpms / 2
            case .eightDot:
                return 60000 / bpms / 4 * 3
            case .eightTriplet:
                return 60000 / bpms / 3
            case .sixt:
                return 60000 / bpms / 4
            case .sixtDot:
                return 60000 / bpms / 4 * 1.5
            case .sixtTriplet:
                return 60000 / bpms / 6
            case .thirtysecond:
                return 60000 / bpms / 8
            case .thirtysecondDot:
                return 60000 / bpms / 8 * 1.5
            case .thirtysecondTriplet:
                return 60000 / bpms / 8 * 2 / 3
            case .sixtyfourth:
                return 60000 / bpms / 16
            case .sixtyfourthDot:
                return 60000 / bpms / 16 * 1.5
            case .sixtyfourthTriplet:
                return 60000 / bpms / 16 * 2 / 3
        }
    }
}
