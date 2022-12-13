//
//  ConfidenceView.swift
//  NavigationOptimal
//
//  Created by Zaid Neurothrone on 2022-12-13.
//

import SwiftUI

struct ConfidenceView: View {
  @EnvironmentObject var navigator: Navigator
  
  @State private var isMediaPlayerSheetPresented = false
  
  let meditation: Meditation
  
  var body: some View {
    VStack(spacing: 20) {
      HStack {
        Button("Back", action: navigator.goBackOneLevel)
        Spacer()
        Button(action: navigator.goToHomePage) {
          Image(systemName: "house.circle.fill")
            .imageScale(.large)
        }
      }
      .padding(.horizontal)
    
      Text(meditation.title)
        .font(.largeTitle)
      Image(systemName: meditation.systemImage)
        .resizable()
        .frame(width: 100, height: 100)
        .scaledToFit()
        .padding(.horizontal)
      
      
      Button("Play in Media Player View") {
        isMediaPlayerSheetPresented.toggle()
      }
      .sheet(isPresented: $isMediaPlayerSheetPresented) {
        MediaPlayerView(meditation: meditation)
      }
      
      Spacer()
    }
    .navigationBarBackButtonHidden(true)
  }
}

struct ConfidenceView_Previews: PreviewProvider {
  static var previews: some View {
    ConfidenceView(meditation: Meditation.samples.first!)
      .environmentObject(Navigator())
  }
}
