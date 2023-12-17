//
//  CrewView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/20/23.
//

import SwiftUI

struct CrewView: View {
    @Binding var isSelected: Int
    let width = UIScreen.main.bounds.width
    @FetchRequest(sortDescriptors: [NSSortDescriptor(key: "crewName", ascending: true)], animation: .easeInOut(duration: 0.1).delay(0.1)) var crew: FetchedResults<CrewEntity>
    var body: some View {
        HStack {
                            ScrollView {
                                ForEach(crew, id: \.id) { member in
                                    Spacer()
                                    PickerImageView(imageTitle: member.crewImage ?? "")
                                        .padding(.top, 20)
                                    PickerTextView(title: member.crewName ?? "")
                                    PickerTextView(title: member.bio ?? "")
                                    Spacer()
                                }
                            }
                        }.padding(.horizontal, width == 428 ? 120 : 100)
    }
}

//struct CrewView_Previews: PreviewProvider {
//    static var previews: some View {
//        CrewView()
//    }
//}
