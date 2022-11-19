//
//  ContentView.swift
//  BPM2MS_v1
//
//  Created by Dax Hoes on 19/11/22.
//

import SwiftUI

@available(macOS 13.0, *)
struct ContentView: View {
    @State private var value = 0
    let bpms = Array(128...180)
    
    func incrementStep() {
        value += 1
        if value >= bpms.count { value = 0 }
    }
    
    func decrementStep() {
        value -= 1
        if value < 0 { value = bpms.count - 1 }
    }
    var body: some View {
        let ml = NoteType.half(bpm: Double(bpms[value])).description
        //let half = String(format: "%.2f", arguments: NoteType.half(bpm: Double(bpms[value])))
        ZStack {
            HStack {
                Stepper("bpm:  \(bpms[value].description)  ", onIncrement: incrementStep, onDecrement: decrementStep)
                    .padding(12)
                    .pickerStyle(.inline)
                    .fixedSize()
                    .buttonStyle(.bordered)
                    .font(.largeTitle)
                Spacer()
                List {
                    Text(String(format: "%.2f %.0f",ml))
                    Text("2th S: \(String(format: "%.2f %.0f",NoteType.half(bpm: Double(bpms[value])).description))")
                    Text("4th S: \(String(format: "%.2f %.0f",NoteType.quarter(bpm: Double(bpms[value])).description))")
                    Text("8th S: \(String(format: "%.2f %.0f",NoteType.eight(bpm: Double(bpms[value])).description))")
                    Text("16th S: \(String(format: "%.2f %.0f",NoteType.sixt(bpm: Double(bpms[value])).description))")
                    Text("32th S: \(String(format: "%.2f %.0f",NoteType.thirtysecond(bpm: Double(bpms[value])).description))")
                    Text("64th S: \(String(format: "%.2f %.0f",NoteType.sixtyfourth(bpm: Double(bpms[value])).description))")
                }
                List {
                    Text("2th D: \(String(format: "%.2f %.0f",NoteType.halfDot(bpm: Double(bpms[value])).description))")
                    Text("4th D: \(String(format: "%.2f %.0f",NoteType.quarterDot(bpm: Double(bpms[value])).description))")
                    Text("8th D: \(String(format: "%.2f %.0f",NoteType.eightDot(bpm: Double(bpms[value])).description))")
                    Text("16th D: \(String(format: "%.2f %.0f",NoteType.sixtDot(bpm: Double(bpms[value])).description))")
                    Text("32th D: \(String(format: "%.2f %.0f",NoteType.thirtysecondDot(bpm: Double(bpms[value])).description))")
                    Text("64th D: \(String(format: "%.2f %.0f",NoteType.sixtyfourthDot(bpm: Double(bpms[value])).description))")
                }
                List {
                    Text("2th T: \(String(format: "%.2f %.0f",NoteType.halfTriplet(bpm: Double(bpms[value])).description))")
                    Text("4th T: \(String(format: "%.2f %.0f",NoteType.quarterTriplet(bpm: Double(bpms[value])).description))")
                    Text("8th T: \(String(format: "%.2f %.0f",NoteType.eightTriplet(bpm: Double(bpms[value])).description))")
                    Text("16th T: \(String(format: "%.2f %.0f",NoteType.sixtTriplet(bpm: Double(bpms[value])).description))")
                    Text("32th T: \(String(format: "%.2f %.0f",NoteType.thirtysecondTriplet(bpm: Double(bpms[value])).description))")
                    Text("64th T: \(String(format: "%.2f %.0f",NoteType.sixtyfourthTriplet(bpm: Double(bpms[value])).description))")
                }
            }
        }
    }
}

@available(macOS 13.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
