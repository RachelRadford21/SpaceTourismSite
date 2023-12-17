//
//  TechView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/20/23.
//

import SwiftUI

struct TechView: View {
    @Binding var isSelected: Int
    let width = UIScreen.main.bounds.width
    @FetchRequest(sortDescriptors: [NSSortDescriptor(key: "techName", ascending: true)], animation: .easeInOut(duration: 0.1).delay(0.1)) var technology: FetchedResults<TechnologyEntity>
    var body: some View {
        HStack {
            ScrollView {
                ForEach(technology, id: \.id) { tech in
                    Spacer()
                    PickerImageView(imageTitle: tech.techImage ?? "")
                        .padding(.top, 20)
                    PickerTextView(title: tech.techName ?? "")
                    PickerTextView(title: tech.techDescription ?? "")
                    Spacer()
                    
                }
            }
        }.padding(.horizontal, width == 428 ? 120 : 100)
    }
}

//struct TechView_Previews: PreviewProvider {
//    static var previews: some View {
//        TechView()
//    }
//}
