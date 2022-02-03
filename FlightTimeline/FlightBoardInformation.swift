//
//  FlightBoardInformation.swift
//  FlightTimeline
//
//  Created by Владислав Голосов on 03.02.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct FlightBoardInformation: View {
    @Binding var isPresented: Bool
    let flight: FlightInformation
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(flight.airline) \(flight.number)")
                    .font(.largeTitle)
                Spacer()
                Button("Done") {
                    isPresented = false
                }
            }
            Text("\(flight.direction == .arrival ? "From" : "To") \(flight.otherAirport)")
            Text("\(flight.flightStatus)")
                .foregroundColor(Color(flight.timelineColor))
            Spacer()
        }
        .font(.headline)
        .padding()
        .navigationTitle("Flight Information")
    }
}

struct FlightBoardInformation_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardInformation(isPresented: .constant(true), flight: FlightInformation.generateFlight())
    }
}
