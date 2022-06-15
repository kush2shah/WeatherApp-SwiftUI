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
                    .font(.system(size: 26,
                                  weight: .medium,
                                  design: .default))
                    .foregroundColor(.white)
                    .padding(30)
                
                VStack{
                    Image(systemName: "sun.max.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90, height: 90)
                    
                    Text("76°")
                        .font(.system(size: 30, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack{
                    DailyView(dayOfWeek: "TUE",
                              conditions: "snowflake",
                              temperature: 2)
                    DailyView(dayOfWeek: "WED",
                              conditions: "tornado",
                              temperature: 25)
                    DailyView(dayOfWeek: "THU",
                              conditions: "hurricane",
                              temperature: 80)
                    DailyView(dayOfWeek: "FRI",
                              conditions: "sun.max.fill",
                              temperature: 110)
                    DailyView(dayOfWeek: "SAT",
                              conditions: "sun.haze.fill",
                              temperature: 82)
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

struct DailyView: View {
    
    var dayOfWeek: String
    var conditions: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 12,
                              weight: .light,
                              design: .default))
                .foregroundColor(.white)
                .padding(5)
            
            Image(systemName: conditions)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
            
            Text("\(temperature)°")
                .font(.system(size: 10, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
