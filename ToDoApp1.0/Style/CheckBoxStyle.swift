//
//  CheckBoxStyle.swift
//  ToDoApp1.0
//
//  Created by SOG on 6/10/22.
//

import SwiftUI

struct CheckBoxStyle: ToggleStyle {
  func makeBody(configuration: Configuration) -> some View {
    return HStack {
      Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
        .foregroundColor(configuration.isOn ? .pink : .primary)
        .font(.system(size: 30, weight: .semibold, design: .rounded))
        .onTapGesture{
          configuration.isOn.toggle()
          feedback.notificationOccurred(.success)
          
          if configuration.isOn {
            playSound(sound: "sound-rise", type: "mp3")
          } else {
            playSound(sound: "sound-tap", type: "mp3")
          }
        }
      
      configuration.label
    } //: HSTACK
  }
}

struct CheckBoxStyle_Previews: PreviewProvider {
    static var previews: some View {
      Toggle("Placeholder Label", isOn: .constant(false))
        .toggleStyle(CheckBoxStyle())
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
