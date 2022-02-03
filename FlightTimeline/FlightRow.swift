//
//  FlightRow.swift
//  FlightTimeline
//
//  Created by Владислав Голосов on 03.02.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct FlightRow: View {
    @State private var isPresented = false
    let flight: FlightInformation
    
    var body: some View {
        Button(action: {isPresented.toggle() }) {
            HStack {
                Text("\(flight.airline) \(flight.number)")
                    .frame(width: 120, alignment: .leading)
                Text("\(flight.otherAirport)")
                    .frame(alignment: .leading)
                Spacer()
                Text("\(flight.flightStatus)")
                    .frame(alignment: .trailing)
            }
        }
        .sheet(isPresented: $isPresented) {
            FlightBoardInformation(isPresented: $isPresented, flight: flight)
        }
    }
}

struct FlightRow_Previews: PreviewProvider {
    static var previews: some View {
        FlightRow(flight: FlightInformation.generateFlight())
    }
}
