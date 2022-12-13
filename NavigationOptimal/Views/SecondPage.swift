//
//  SecondPage.swift
//  NavigationOptimal
//
//  Created by Zaid Neurothrone on 2022-12-13.
//

import SwiftUI

struct SecondPage: View {
  @EnvironmentObject var navigator: Navigator
  
  var body: some View {
    VStack(spacing: 20) {
      Text("This is the Second Page Screen")
        .font(.largeTitle.bold())
      
      Group {
        Button("Navigate Back to First Page", action: navigator.goBackOneLevel)
        Button("Navigate back to Main Screen", action: navigator.goToHomePage)
          .tint(.purple)
      }
      .buttonStyle(.borderedProminent)
      
      Spacer()
    }
    .padding()
    .navigationBarBackButtonHidden(true)
  }
}

struct SecondPage_Previews: PreviewProvider {
  static var previews: some View {
    SecondPage()
      .environmentObject(Navigator())
  }
}
