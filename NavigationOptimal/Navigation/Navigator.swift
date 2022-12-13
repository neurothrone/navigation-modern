//
//  Navigator.swift
//  NavigationOptimal
//
//  Created by Zaid Neurothrone on 2022-12-13.
//

import SwiftUI

final class Navigator: ObservableObject {
  static var preview: Navigator = {
    let navigator = Navigator()
    return navigator
  }()
  
  @Published var path = NavigationPath()
  
  
  func goToHomePage() {
    path.removeLast(path.count)
  }
  
  func goToFirstPageByButton() {
    path.append(Destination.firstPage)
  }
  
  func goToSecondPageByButton() {
    path.append(Destination.secondPage)
  }
  
  func goBackOneLevel() {
    if !path.isEmpty {
      path.removeLast()
    }
  }
  
  @ViewBuilder
  static func viewForDestination(_ destination: Destination) -> some View {
    switch destination {
    case .firstPage:
      FirstPage()
    case .secondPage:
      SecondPage()
    }
  }
}

enum Destination {
  case firstPage
  case secondPage
}
