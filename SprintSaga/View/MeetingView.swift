//
//  ContentView.swift
//  SprintSaga
//
//  Created by Jai  on 21/09/23.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value:5,total: 15)
            HStack{
                VStack(alignment: .leading){
                    Text("Time Elapsed")
                        .font(.caption)
                        
                        .background(Color.red)
                        .cornerRadius(5)
                       Label("300", systemImage: "timer")
                        .foregroundColor(.red)
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Second Remaning")
                        .font(.caption)
                        .background(Color.gray)
                        .cornerRadius(5)
                    Label("600", systemImage: "timer.circle")
                        .foregroundColor(.gray)
                }
                
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaning")
            .accessibilityValue("10 Minutes ")
                Circle()
                    .strokeBorder(lineWidth: 24)
                    .foregroundColor(.blue)
            HStack{
                Text("Speaker 1 Of 3")
                    .foregroundStyle(.gray)
                    .font(.title3)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                 Image(systemName: "goforward.plus")
                        .font(.system(size: 20))
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
}

#Preview {
    MeetingView()
}
