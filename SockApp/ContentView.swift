//
//  ContentView.swift
//  SockApp
//
//  Created by masch.ine on 08.09.25.
//

import SwiftUI

struct ContentView: View {
    //@state ist damit var veränderbar ist aber es reset sich oft
    //mit @AppStorage sollte das nicht passieren, also der row count soll weiter gehen
    @AppStorage("counterKey") private var counter = 0
    var body: some View {
        
        ZStack{
            Image("background")
                .resizable()
        VStack {
         
                
                Text("here is an app, that helps you with your sock knitting needs")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                Text("or at least it tries")
            Button("push to count the row") {
                counter+=1
                print(counter)
            }
            .padding(.all, 20.0)
            .background(Color(hue: 0.587, saturation: 0.775, brightness: 1.0))
            .cornerRadius(15)
            .foregroundColor(.white)
            
            Text("Row count so far: \(counter)")
                .font(.largeTitle)
                           .padding()

            Button(action: {
                counter = 0
            }) {
                Image(systemName: "arrowshape.turn.up.backward.circle")
                    .foregroundColor(Color.purple)
                Text("reset counter")
                    .font(.headline)
                    .foregroundColor(Color.purple)
            }

           
        }.padding()
          
        }.ignoresSafeArea()
       
    }
}

#Preview {
    ContentView()
}
