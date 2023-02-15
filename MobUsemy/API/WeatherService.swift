//
//  WeatherService.swift
//  MobUsemy
//
//  Created by Dariya Gecher on 08.02.2023.
//

import Foundation

class WeatherService{
    func getWeather(completion: @escaping (Int) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            let temperature = Int.random(in: -30...30)
            completion(temperature)
        }
    }
}
