//
//  ContentView.swift
//  cardSwipeApp
//
//  Created by M. A. Alim Mukul on 03.09.22.
//

import SwiftUI

struct ContentView: View {
    
    var cardColor : Color {
        return  Color(.sRGB, red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1), opacity: 1)
    }
    
    var body: some View {
        
        GeometryReader {
            geo in
            
            TabView {
                
                ForEach(1...50, id: \.self) {
                    index in
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(cardColor)
                        
                        Image(systemName: String(index)+".circle")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 150, height: 150, alignment: .center)
                            
                            
                    }
                    .frame(width: max(geo.size.width-45, 100), height: max(geo.size.height-110, 100))
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
