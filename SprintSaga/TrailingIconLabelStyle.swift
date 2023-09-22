//
//  TrailingIconLabelStyle.swift
//  SprintSaga
//
//  Created by Jai  on 23/09/23.
//

import SwiftUI
struct TrailingIconLabelStyle:LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}
extension LabelStyle where Self == TrailingIconLabelStyle{
    static var trailingIcon:Self{ Self()}
}
