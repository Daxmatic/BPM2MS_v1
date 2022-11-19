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
    //    let ml = NoteType.self
        //let half = String(format: "%.2f", arguments: NoteType.half(bpm: Double(bpms[value])))
        ZStack {
            VStack {
                Stepper("bpm:  \(bpms[value].description)  ", onIncrement: incrementStep, onDecrement: decrementStep)
                    .padding(12)
                    .pickerStyle(.inline)
                    .fixedSize()
                    .buttonStyle(.bordered)
                    .font(.largeTitle)
                Spacer()
                List {
                    Text("2th S: \(NoteType.half(bpm: Double(bpms[value])).description)")
                    Text("2th D: \(NoteType.halfDot(bpm: Double(bpms[value])).description)")
                    Text("2th T: \(NoteType.halfTriplet(bpm: Double(bpms[value])).description)")
                    Text("4th S: \(NoteType.quarter(bpm: Double(bpms[value])).description)")
                    Text("4th D: \(NoteType.quarterDot(bpm: Double(bpms[value])).description)")
                    Text("4th T: \(NoteType.quarterTriplet(bpm: Double(bpms[value])).description)")
                }
                List {
                    Text("8th S: \(NoteType.eight(bpm: Double(bpms[value])).description)")
                    Text("8th D: \(NoteType.eightDot(bpm: Double(bpms[value])).description)")
                    Text("8th T: \(NoteType.eightTriplet(bpm: Double(bpms[value])).description)")
                    Text("16th S: \(NoteType.sixt(bpm: Double(bpms[value])).description)")
                    Text("16th D: \(NoteType.sixtDot(bpm: Double(bpms[value])).description)")
                    Text("16th T: \(NoteType.sixtTriplet(bpm: Double(bpms[value])).description)")
                }
                List {
                    Text("32th S: \(NoteType.thirtysecond(bpm: Double(bpms[value])).description)")
                    Text("32th D: \(NoteType.thirtysecondDot(bpm: Double(bpms[value])).description)")
                    Text("32th T: \(NoteType.thirtysecondTriplet(bpm: Double(bpms[value])).description)")
                    Text("64th S: \(NoteType.sixtyfourth(bpm: Double(bpms[value])).description)")
                    Text("64th D: \(NoteType.sixtyfourthDot(bpm: Double(bpms[value])).description)")
                    Text("64th T: \(NoteType.sixtyfourthTriplet(bpm: Double(bpms[value])).description)")
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
