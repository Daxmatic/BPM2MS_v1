//
//  BPMView.swift
//  BPM2MS_v1
//
//  Created by Dax Hoes on 19/11/22.
//

import SwiftUI

struct BPMView: View {
    @State private var pbpm: NoteType = .eight(bpm: 120)
    
    var body: some View {
        List {
            Picker("BPM: ",selection: $pbpm ) {
                Text("16th S: \(NoteType.sixt(bpm: Double(pbpm[120])).description)")
            }
            //Text("16th S: \(NoteType.sixt(bpm: Double(bpms[value])).description)")
            //Text("16th D: \(NoteType.sixtDot(bpm: Double(bpms[value])).description)")
            //Text("16th T: \(NoteType.sixtTriplet(bpm: Double(bpms[value])).description)")
        }
    }
}

struct BPMView_Previews: PreviewProvider {
    static var previews: some View {
        BPMView()
    }
}
