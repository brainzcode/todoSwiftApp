//
//  ToDoApp1_0App.swift
//  ToDoApp1.0
//
//  Created by SOG on 6/7/22.
//

import SwiftUI

@main
struct ToDoApp1_0App: App {
  let persistenceController = PersistenceController.shared
  
  @AppStorage("isDarkMode") var isDarkMode: Bool = false

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
