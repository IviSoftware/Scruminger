//
//  CardView.swift
//  Scrumdinger
//
//  Created by ALEJANDRO IVAN MENDIETA ACEVEDO on 13/09/25.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading){
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack{
                Label("\(scrum.attendees.count)",systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .padding(.trailing,20)
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
            
        }
        .padding()
        .foregroundStyle(scrum.theme.accentColor)
    }
}

/*
 Ese traits: .fixedLayout(width: 400, height: 60) fuerza a que el preview muestre la vista con esas dimensiones exactas, simulando cómo se vería en un espacio de lista/celda.
 */
#Preview(traits: .fixedLayout(width: 400, height: 60)) {
    let scrum = DailyScrum.sampleData[0]
    return CardView(scrum: scrum)
        .background(scrum.theme.mainColor)
}
