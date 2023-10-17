//
//  PickerTitleView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/20/23.
//

import SwiftUI

struct PickerTextView: View {
    var title = ""
    let width = UIScreen.main.bounds.width
    var body: some View {
        VStack(spacing: 10) {
            Text(title)
                .foregroundColor(.white)
                .font(.system(size: width == 820 ? 40 : 20))
                .fontWeight(.bold)
                .padding(.bottom)
        }.padding(.top, 30)
    }
}

struct PickerTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PickerTextView()
    }
}
