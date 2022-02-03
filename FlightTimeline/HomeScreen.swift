//
//  HomeScreen.swift
//  FlightTimeline
//
//  Created by Владислав Голосов on 03.02.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    let flightInfo = FlightInformation.generateFlights()
    
    var body: some View {
       NavigationView {
            ZStack {
                Image(systemName: "airplane")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .rotationEffect(.degrees(-90))
                    .opacity(0.1)
                VStack(alignment: .leading, spacing: 10) {
                    NavigationLink(
                        "Arrivals",
                        destination: FlightBoard(
                            boardName: "Arrivals",
                            flightInfo: flightInfo.filter { $0.direction == .arrival}
                        )
                    )
                    NavigationLink(
                        "Depatures",
                        destination: FlightBoard(
                            boardName: "Depatures",
                            flightInfo: flightInfo.filter { $0.direction == .departure}
                        )
                    )
                    NavigationLink(
                        "Flight Timeline",
                        destination: TimeLineInfo(flights: flightInfo)
                    )
                    Spacer()
                }
                .font(.title)
            }
            .navigationTitle("Airport")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
