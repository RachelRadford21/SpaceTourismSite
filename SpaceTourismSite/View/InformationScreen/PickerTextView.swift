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
                .font(.system(size: width >= 390 ? 15 : 10))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.bottom)
        }
         .padding(.horizontal, 10)
    }
}

struct PickerTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PickerTextView()
    }
}
