//
//  Weather.swift
//  Weather App TesTask
//
//  Created by Yuliya Lapenak on 12/7/22.
//

import Foundation

struct Weather {
    var name: String = "Name"
    var temp: Int
    var conditionCode: String
    var url: String
    var condition: String
    var pressureMm: Int
    var windSpeed: Int
    var tempMin: Int
    var tempMax: Int
    
//    var conditionString: String {
//        switch condition{
//        case "clear": return "clear"
//
//        default: return "Loading.."
//
    init?(weatherData: WeatherData) {
        
        temp = weatherData.fact.temp
        conditionCode = weatherData.fact.icon
        url = weatherData.info.url
        condition = weatherData.fact.condition
        pressureMm = weatherData.fact.pressureMm
        windSpeed = weatherData.fact.windSpeed
        tempMin = weatherData.forecasts.first!.parts.day.tempMin!
        tempMax = weatherData.forecasts.first!.parts.day.tempMax!
    }
    
}

