//
//  ContentView.swift
//  NavigationModern
//
//  Created by Zaid Neurothrone on 2022-12-13.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var navigator: Navigator
  
  var body: some View {
    VStack(spacing: 20) {
      Text("This is the Main Screen")
        .font(.largeTitle.bold())
      

      NavigationLink(value: Destination.firstPage) {
        Label("Navigate to First Page By NavigationLink", systemImage: "arrowshape.right.fill")
      }
      
      Button(action: navigator.goToFirstPageByButton) {
        Label("Navigate to First Page By Button", systemImage: "arrowshape.right.fill")
      }
      .buttonStyle(.borderedProminent)

      Spacer()
    }
    .padding()
  }
}

//MARK: - Navigation will not completely work through Previews, only when using  Simulator or a real device
struct ContentView_Previews: PreviewProvider {
  @StateObject static var navigator: Navigator = .preview
  
  static var previews: some View {
    NavigationStack(path: $navigator.path) {
      ContentView()
        .navigationDestination(for: Destination.self) { destination in
          Navigator.viewForDestination(destination)
        }
    }
    .environmentObject(navigator)
  }
}
