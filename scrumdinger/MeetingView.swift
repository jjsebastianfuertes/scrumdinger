//
//  ContentView.swift
//  scrumdinger
//
//  Created by Juan J Sebastian Fuertes on 7/18/21.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment:.leading){
                    Text("Seconds Elapsed").font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment:.trailing) {
                    Text("Seconds Remaning").font(.caption)
                    Label("600", systemImage:"hourglass.tophalf.fill")
                }
            }.accessibilityElement(children: .ignore)
             .accessibilityLabel(Text("Time remaining"))
             .accessibilityValue(Text("10 minutes"))
            Circle().strokeBorder(lineWidth: 24, antialiased:true)
            HStack{
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "forward.fill").foregroundColor(.black)
                }).accessibilityLabel(Text("Next speaker"))
            }
        }.padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
