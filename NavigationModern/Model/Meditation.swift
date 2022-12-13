//
//  Meditation.swift
//  NavigationModern
//
//  Created by Zaid Neurothrone on 2022-12-13.
//

import Foundation

struct Meditation: Identifiable {
  let id: String = UUID().uuidString
  let title: String
  let systemImage: String
  
  static let samples: [Meditation] = [
    .init(title: "Sunshine", systemImage: "sun.max.fill"),
    .init(title: "Sleep", systemImage: "bed.double.fill")
  ]
  
  static func allSamplesExcept(meditation: Meditation) -> [Meditation] {
    samples.filter { $0.id != meditation.id }
  }
}

extension Meditation: Hashable {
  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
}
