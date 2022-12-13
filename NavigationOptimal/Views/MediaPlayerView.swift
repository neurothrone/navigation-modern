//
//  MediaPlayerView.swift
//  NavigationOptimal
//
//  Created by Zaid Neurothrone on 2022-12-13.
//

import SwiftUI

struct MediaPlayerView: View {
  @Environment(\.dismiss) var dismiss
  @EnvironmentObject var navigator: Navigator
  
  let meditation: Meditation
  
  var body: some View {
    VStack(spacing: 20) {
      HStack {
        Button("Dismiss", action: { dismiss() })
        Spacer()
        Button(action: navigator.goToHomePage) {
          Image(systemName: "house.circle.fill")
            .imageScale(.large)
        }
      }
      .padding(.horizontal)
      
      Text("Media Player View")
        .font(.largeTitle)
      
      Text("Playing \(meditation.title)")
      
      Spacer()
    }
    .navigationBarBackButtonHidden(true)
  }
}

struct MediaPlayerView_Previews: PreviewProvider {
  static var previews: some View {
    MediaPlayerView(meditation: Meditation.samples.first!)
      .environmentObject(Navigator())
  }
}
