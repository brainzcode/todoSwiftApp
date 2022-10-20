//
//  BlankView.swift
//  ToDoApp1.0
//
//  Created by SOG on 6/9/22.
//

import SwiftUI

struct BlankView: View {
  // MARK:  -  PROPERTY
  
  var backgroundColor: Color
  var backgroundOpacity: Double
  
  // MARK:  -  BODY
  
    var body: some View {
      VStack {
        Spacer()
      }
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
      .background(backgroundColor)
      .opacity(backgroundOpacity)
      .blendMode(.overlay)
      .edgesIgnoringSafeArea(.all)
    }
}

struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
      BlankView(backgroundColor: Color.black, backgroundOpacity: 0.3)
        .background(BackgroundImageView())
        .background(backgroundGradient.ignoresSafeArea(.all))
    }
}
