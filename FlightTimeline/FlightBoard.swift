//
//  FlightBoard.swift
//  FlightTimeline
//
//  Created by Владислав Голосов on 03.02.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct FlightBoard: View {
    @State private var hideCancelled = false
    let boardName: String
    let flightInfo: [FlightInformation]
    
    var shownFlights: [FlightInformation] {
        hideCancelled
        ? flightInfo.filter { $0.status != .cancelled }
        : flightInfo
    }
    
    var body: some View {
            List(shownFlights) { flight in
                FlightRow(flight: flight)
            }
            .listStyle(.plain)
            .navigationBarTitle(boardName)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Toggle("Hide Cancelled", isOn: $hideCancelled)
                }
            }
        }
}

struct FlightBoard_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoard(boardName: "Flight Board", flightInfo: FlightInformation.generateFlights())
    }
}
