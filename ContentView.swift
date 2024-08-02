//
//  ContentView.swift
//  SUIScrollView
//
//  Created by Даниил Ледник on 01.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView([.horizontal, .vertical]) {
            HStack {
                Group {
                    CardView(imageName: "1",
                             productType: "MacBook D",
                             productName: "Doubled MacBook Concept",
                             creatorName: "Oliver Thompson")
                    CardView(imageName: "2",
                             productType: "MacBook S",
                             productName: "MacBook S Concept",
                             creatorName: "Emily Bennett")
                    CardView(imageName: "3",
                             productType: "MacBook Steam",
                             productName: "SteamPunk MacBook Concept",
                             creatorName: "Haruto Tanaka")
                    CardView(imageName: "4",
                             productType: "MacBook S",
                             productName: "Full Sensored MacBook Concept",
                             creatorName: "Yui Sato")
                }
                .frame(width: 400)
                .padding()
            }
        }
        .scrollIndicators(.hidden)
    }
}
#Preview {
    ContentView()
}
