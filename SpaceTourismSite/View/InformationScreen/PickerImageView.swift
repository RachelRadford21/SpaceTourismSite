//
//  PickerImageView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/20/23.
//

import SwiftUI

struct PickerImageView: View {
    var imageTitle = ""
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
        Image(imageTitle)
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
            .scaledToFit()
    }
}

struct PickerImageView_Previews: PreviewProvider {
    static var previews: some View {
        PickerImageView()
    }
}
