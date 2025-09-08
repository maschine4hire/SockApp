//
//  ContentView.swift
//  SockApp
//
//  Created by masch.ine on 08.09.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            RadialGradient(gradient: Gradient(colors: [Color.yellow, Color.red]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/500/*@END_MENU_TOKEN@*/)
                .cornerRadius(15)
        VStack {
         
                
                Text("here is an app, that helps you with your sock knitting needs")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                Text("or at least it tries")
        }.padding()
        }.ignoresSafeArea()
       
    }
}

#Preview {
    ContentView()
}
