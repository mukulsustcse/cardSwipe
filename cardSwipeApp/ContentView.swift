//
//  ContentView.swift
//  cardSwipeApp
//
//  Created by M. A. Alim Mukul on 03.09.22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        GeometryReader {
            geo in
            
            TabView {
                
                ForEach(1...10, id: \.self) {
                    index in
                    
                    ZStack {
                        Rectangle()
                        
                        Image(systemName: String(index)+".circle")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 150, height: 150, alignment: .center)
                            
                            
                    }
                    .frame(width: geo.size.width-40, height: geo.size.height-100, alignment: .center)
                    .cornerRadius(20)
                    .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 5), radius: 10, x: 5, y: 5)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
