//
//  ImageView.swift
//  ToDoApp1.0
//
//  Created by SOG on 6/9/22.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        Image("rocket")
        .antialiased(true)
        .resizable()
        .scaledToFill()
        .ignoresSafeArea(.all)
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
      BackgroundImageView()
    }
}
