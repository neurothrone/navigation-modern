//
//  AppMain.swift
//  NavigationOptimal
//
//  Created by Zaid Neurothrone on 2022-12-13.
//

import SwiftUI

@main
struct AppMain: App {
  @StateObject var navigator = Navigator()
  
  var body: some Scene {
    WindowGroup {
      NavigationStack(path: $navigator.path) {
        ContentView()
          .navigationDestination(for: Destination.self) { destination in
            Navigator.viewForDestination(destination)
          }
      }
      .environmentObject(navigator)
    }
  }
}
