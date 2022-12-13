//
//  Meditation.swift
//  NavigationOptimal
//
//  Created by Zaid Neurothrone on 2022-12-13.
//

import Foundation

struct Meditation: Identifiable {
  let id: String = UUID().uuidString
  let title: String
  let systemImage: String
  
  static var samples: [Meditation] {
    [
      .init(title: "Sunshine", systemImage: "sun.max.fill"),
      .init(title: "Sleep", systemImage: "bed.double.fill")
    ]
  }
}

extension Meditation: Hashable {
  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
}
