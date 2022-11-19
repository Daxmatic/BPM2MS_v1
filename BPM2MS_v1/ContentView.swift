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
        //let ml = NoteType.half(bpm: Double(bpms[value]))//.description
        ZStack {
            HStack {
                Stepper("BPM:  \(bpms[value].description)  ", onIncrement: incrementStep, onDecrement: decrementStep)
                    .padding(12)
                    .pickerStyle(.automatic)
                    .fixedSize()
                    .buttonStyle(.borderedProminent)
                    .font(.largeTitle)
                Spacer()
                List {
                    //Text(String(format: "%.2f %.0f", ml.description).deletingSuffix(" 0"))
                    Text("Straight").foregroundColor(.blue)
                    Text("2th:   \(String(format: "%.2f %.0f",NoteType.half(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("4th:   \(String(format: "%.2f %.0f",NoteType.quarter(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("8th:   \(String(format: "%.2f %.0f",NoteType.eight(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("16th:  \(String(format: "%.2f %.0f",NoteType.sixt(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("32th:  \(String(format: "%.2f %.0f",NoteType.thirtysecond(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("64th:  \(String(format: "%.2f %.0f",NoteType.sixtyfourth(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                }
                List {
                    Text("Dotted").foregroundColor(.blue)
                    Text("2th:   \(String(format: "%.2f %.0f",NoteType.halfDot(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("4th:   \(String(format: "%.2f %.0f",NoteType.quarterDot(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("8th:   \(String(format: "%.2f %.0f",NoteType.eightDot(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("16th:  \(String(format: "%.2f %.0f",NoteType.sixtDot(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("32th:  \(String(format: "%.2f %.0f",NoteType.thirtysecondDot(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("64th:  \(String(format: "%.2f %.0f",NoteType.sixtyfourthDot(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                }
                List {
                    Text("Triplets").foregroundColor(.blue)
                    Text("2th:   \(String(format: "%.2f %.0f",NoteType.halfTriplet(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("4th:   \(String(format: "%.2f %.0f",NoteType.quarterTriplet(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("8th:   \(String(format: "%.2f %.0f",NoteType.eightTriplet(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("16th:  \(String(format: "%.2f %.0f",NoteType.sixtTriplet(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("32th:  \(String(format: "%.2f %.0f",NoteType.thirtysecondTriplet(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
                    Text("64th:  \(String(format: "%.2f %.0f",NoteType.sixtyfourthTriplet(bpm: Double(bpms[value])).description).deletingSuffix(" 0"))")
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
