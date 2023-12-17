//
//  InfoPickerView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/15/23.
//

import SwiftUI

struct InfoPickerView: View {
    @State private var isSelected = 1
    @EnvironmentObject var vr: ViewRouter
    @FetchRequest(sortDescriptors: [NSSortDescriptor(key: "crewName", ascending: true)], animation: .easeInOut(duration: 0.1).delay(0.1)) var crew: FetchedResults<CrewEntity>
    let width = UIScreen.main.bounds.width
    var body: some View {
        ZStack {
            DestinationBackgroundView()
            VStack {
                BackButtonView(page: .page2)
                NavigationStack {
                    Picker("", selection: $isSelected) {
                        
                        Text("Technology").tag(1)
                           
                            .onTapGesture {
                                isSelected = 1

                            }
                        Text("Crew").tag(2)
                            .onTapGesture {
                                isSelected = 2
                                
                            }
                    }.pickerStyle(.segmented)
                }
                .frame(width: width == 820 ? 400 : 300, height: width == 820 ? 50 : 20)
                .cornerRadius(20)
               
                // I know this is bad practice but for what I want to achieve it is the only thing that has worked without distorting the view. I tried to use my viewRouter with no luck
                if isSelected == 1 {
                    TechView(isSelected: $isSelected)
                }else if isSelected == 2 {
                    CrewView(isSelected: $isSelected)
                }

            }
        }
    }
}


struct InfoPickerView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPickerView()
    }
}
