//
//  ScrumsView.swift
//  SprintSaga
//
//  Created by Jai  on 23/09/23.
//

import SwiftUI


struct ScrumsView: View {
    let scrums: [DailyScrum]
  
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination:DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                        .listRowBackground(scrum.theme.mainColor)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrum")
            .toolbar{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/)  {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
