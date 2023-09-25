//
//  DailyScrum.swift
//  SprintSaga
//
//  Created by Jai  on 21/09/23.
//

import Foundation

struct  DailyScrum: Identifiable{
    let id: UUID
    var title:String
    var attendees:[Attendee]
    var lengthInMinutes:Int
    var theme:Theme  
    
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
           self.id = id
           self.title = title
           self.attendees = attendees.map { Attendee(id: UUID(), name: $0) }
           self.lengthInMinutes = lengthInMinutes
           self.theme = theme
       }
}

extension DailyScrum{
    struct Attendee:Identifiable{
        let id: UUID
        var name: String
        
        init(id: UUID, name: String) {
            self.id = id
            self.name = name
        }
    }
}
extension DailyScrum {
    static let sampleData:[DailyScrum] =
    [
        DailyScrum(title: "Design", 
                   attendees:  ["Cathy", "Daisy", "Simon", "Jonathan"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        
        
        DailyScrum(title: "App Dev",
                          attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"],
                          lengthInMinutes: 5,
                          theme: .orange),
        
        
        DailyScrum(title: "Web Dev",
                   attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                          lengthInMinutes: 5,
                   theme: .pink)
        
    ]
}
