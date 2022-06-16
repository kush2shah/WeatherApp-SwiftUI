//
//  ContentView.swift
//  WeatherApp
//
//  Created by Kush Shah on 6/15/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BGView(topColor: Color("Carolina"), bottomColor: Color("Secondary"))
            VStack{
                CityTextView(cityName: "Chapel Hill, NC")
                MainWeatherStatusView(condition: isNight ? "sun.haze.fill" : "moon.haze.fill", temp: 60)
                .padding(.bottom, 20)
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
                
                Button {
                    // Action
                    isNight.toggle()
                } label: {
                    Image(systemName: isNight ? "moon.circle" : "moon.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                }
                .buttonStyle(.plain)

                
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

struct BGView: View {
    
    var topColor: Color
    var bottomColor: Color
    var body: some View {

        LinearGradient(colors: [topColor, bottomColor],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 26,
                          weight: .medium,
                          design: .default))
            .foregroundColor(.white)
            .padding(30)
    }
}

struct MainWeatherStatusView: View {
    var condition: String
    var temp: Int
    var body: some View {
        VStack{
            Image(systemName: condition)
                .symbolRenderingMode(.palette)
                .resizable()
                .foregroundStyle(Color("Carolina"), .white, .gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            
            Text("\(temp)°")
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
