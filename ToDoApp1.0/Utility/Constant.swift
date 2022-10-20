//
//  Constant.swift
//  ToDoApp1.0
//
//  Created by SOG on 6/8/22.
//

import SwiftUI

// MARK:  -  FORMATTER

let itemFormatter: DateFormatter = {
  let formatter = DateFormatter()
  formatter.dateStyle = .short
  formatter.timeStyle = .medium
  return formatter
}()

// MARK:  -  UI

var backgroundGradient: LinearGradient {
  return LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

// MARK:  -  UX

let feedback = UINotificationFeedbackGenerator()
