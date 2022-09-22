//
//  ContentView.swift
//  Bullseye
//
//  Created by Md. Abdul Mozid on 12/3/22.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible:Bool = false
    @State private var sliderValue: Double = 10.0
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BALL AS CLOSE AS YOU CAN TO")
            .bold()
            .kerning(2)
            .multilineTextAlignment(.center)
            .lineSpacing(3)
            .font(.footnote)
            
            Text("89")
                .kerning(-1.0)
                .font(.title2)
                .fontWeight(.black)
                .lineSpacing(36)
            HStack {
                Text("1")
                    .fontWeight(.bold)
                    .font(.caption)
                    .lineSpacing(21)
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .fontWeight(.bold)
                    .font(.caption)
                    .lineSpacing(21)
            }
            .padding()
            Button("HIT ME") {
                self.alertIsVisible = true
            }
            
            .alert("Hello there!", isPresented: $alertIsVisible) {
              Button("Exit!") { }
            } message: {
                Text("The Slider Value is: \(self.sliderValue).")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
