//
//  ContentView.swift
//  Bullseye
//
//  Created by Dmitrii Frolov on 03.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    
    
    var body: some View {
        VStack {

            Text("🎯🎯🎯\nPull the bullseye as close as you can to")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .font(.largeTitle)
                .fontWeight(.black)
                .kerning(-1.0)
            HStack {
                Text("1")
                    .font(.body)
                    .fontWeight(.bold)
                Slider(value: .constant(50), in:1.0...100.0)
                Text("100")
                    .font(.body)
                    .fontWeight(.bold)
            }


            Button(action:{
                print("Dima")
                self.alertIsVisible = true
                print(alertIsVisible)
            }) {
                Text("Hit me")
            }
            
            .alert("Hello there!", isPresented: $alertIsVisible) {
                Button("Awesome!") {
                    
                }}
        message: {
            Text("This is my first pop-up 🥳!")
        }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
