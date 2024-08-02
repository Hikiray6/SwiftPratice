//
//  CardView.swift
//  SUIScrollView
//
//  Created by Даниил Ледник on 01.08.2024.
//

import Foundation
import SwiftUI

struct CardView:View {
    var imageName : String
    var productType : String
    var productName: String
    var creatorName : String
    var body: some View {
        VStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(productType)
                .font(.headline)
                .foregroundStyle(.gray)
            Text(productName)
                .font(.title)
            Text("Created by \(creatorName)")
                .font(.caption)
                .foregroundStyle(.gray)
                .padding(.bottom)
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    CardView(imageName: "1", productType: "MacBook D", productName: "Dobled MacBook Concept", creatorName: "Oliver Thompson")
}
