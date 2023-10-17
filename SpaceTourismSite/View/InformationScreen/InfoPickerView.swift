//
//  InfoPickerView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/15/23.
//

import SwiftUI

struct InfoPickerView: View {
    @State private var isSelected = 0
    let width = UIScreen.main.bounds.width
    @FetchRequest(sortDescriptors: [NSSortDescriptor(key: "crewName", ascending: true)], animation: .easeInOut(duration: 0.1).delay(0.1)) var crew: FetchedResults<CrewEntity>
    var body: some View {
        ZStack {
            DestinationBackgroundView()
            VStack {
                NavigationStack {
                    Picker("", selection: $isSelected) {
                        Text("Technology").tag(1)
                            .onTapGesture {
                                isSelected = 1
                            }
                        Text("Crew").tag(2)
                            .onTapGesture {
                                isSelected = 2
                                print("Selected: \(isSelected)")
                            }
                    }
                }.pickerStyle(.segmented)
                    .frame(width: width == 820 ? 400 : 300, height: width == 820 ? 50 : 20)
                   // .padding(.bottom, 40)
                    .cornerRadius(20)
                    
                if isSelected == 1 {
                   TechView(isSelected: $isSelected)
                }
                if isSelected == 2 {
                    CrewView(isSelected: $isSelected)
                }
//                HStack {
//                    ScrollView {
//                        ForEach(crew, id: \.id) { member in
//                            Text(member.crewName ?? "")
//                                .foregroundColor(.white)
//                        }
//                    }
//                }
                
            }
    }
    }
}

struct InfoPickerView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPickerView()
    }
}
