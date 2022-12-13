//
//  FirstPage.swift
//  NavigationModern
//
//  Created by Zaid Neurothrone on 2022-12-13.
//

import SwiftUI

struct FirstPage: View {
  @EnvironmentObject var navigator: Navigator
  
  let meditations: [Meditation] = Meditation.samples
  
  var body: some View {
    VStack(spacing: 20) {
      Text("This is the First Page Screen")
        .font(.largeTitle.bold())
      
      Group {
        Button("Navigate to Second Page", action: navigator.goToSecondPageByButton)
        Button("Navigate back to Main Screen", action: navigator.goToHomePage)
          .tint(.purple)
      }
      .buttonStyle(.borderedProminent)
      
      List(meditations) { meditation in
        NavigationLink(meditation.title, value: meditation)
//        NavigationLink {
//          ConfidenceView(meditation: meditation)
//        } label: {
//          Text("Go to Confidence View")
//        }
      }

      
      Spacer()
    }
    .padding()
    .navigationBarBackButtonHidden(true)
    .navigationDestination(for: Meditation.self) { meditation in
      ConfidenceView(meditation: meditation)
    }
  }
}

struct FirstPage_Previews: PreviewProvider {
  static var previews: some View {
    FirstPage()
      .environmentObject(Navigator())
  }
}
