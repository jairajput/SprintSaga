//
//  CardView.swift
//  SprintSaga
//
//  Created by Jai  on 21/09/23.
//

import SwiftUI


struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack{
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(/*@START_MENU_TOKEN@*/.isHeader/*@END_MENU_TOKEN@*/)
                 Spacer()
            HStack{
                Label("\(scrum.attendees.count)",systemImage: "person.3.fill")
                    .accessibilityLabel("\(scrum.attendees.count) attendes")
                Spacer()
                Label("\(scrum.lengthInMinutes)",systemImage: "clock.fill")
                    .accessibilityLabel("\(scrum.lengthInMinutes) attendes")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        
        .background(Color.yellow)
        .foregroundColor(scrum.theme.accentColor)

    }
}
struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
