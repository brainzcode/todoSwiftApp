//
//  HideKeyboardExtension.swift
//  ToDoApp1.0
//
//  Created by SOG on 6/8/22.
//

import SwiftUI

#if canImport(UIKit)
extension View {
  func hideKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}
#endif
