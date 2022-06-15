//
//  ContentView.swift
//  WeatherApp
//
//  Created by Kush Shah on 6/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .white],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Chapel Hill, NC")
                    .font(.system(size:32,
                                  weight: .medium,
                                  design: .default))
                    .foregroundColor(.white)
                    .padding(50)
                
                VStack{
                    Image(systemName: "thermometer.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
