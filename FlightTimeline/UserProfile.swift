//
//  UserProfile.swift
//  FlightTimeline
//
//  Created by Владислав Голосов on 03.02.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 120, height: 120)
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
