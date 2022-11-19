//
//  ContentView.swift
//  BPM2MS_v1
//
//  Created by Dax Hoes on 19/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var value = 0
    let bpms = Array(120...180)
    
    func incrementStep() {
        value += 1
        if value >= bpms.count { value = 0 }
    }
    
    func decrementStep() {
        value -= 1
        if value < 0 { value = bpms.count - 1 }
    }
    var body: some View {
        ZStack {
            VStack {
                Stepper("bpm:  \(bpms[value].description)  ", onIncrement: incrementStep, onDecrement: decrementStep)
                    .padding(25)
                    .pickerStyle(.radioGroup)
                    .font(.largeTitle)
                Spacer()
                    Text("16th S: \(NoteType.sixt(bpm: Double(bpms[value])).description)")
                    Text("16th D: \(NoteType.sixtDot(bpm: Double(bpms[value])).description)")
                    Text("16th T: \(NoteType.sixtTriplet(bpm: Double(bpms[value])).description)")
            }
            .padding(50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
