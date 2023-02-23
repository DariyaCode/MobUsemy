//
//  AcceptableInteractor.swift
//  MobUsemy
//
//  Created by Dariya Gecher on 08.02.2023.
//

import Foundation

protocol AcceptableInteractorProtocol: AnyObject{
    func loadDate()
    func loadWeather()
    var temperature: Int { get }
}

class AcceptableInteractor: AcceptableInteractorProtocol{
    
    weak var presenter: AcceptablePresenterProtocol?
    let dateService = DateService()
    let weatherService = WeatherService()
    
    var temperature: Int = 0
    
    func loadDate() {
        dateService.getDate{ [weak self] date in
            self?.presenter?.didLoad(date: date.description)
        }
    }
    
    func loadWeather() {
        weatherService.getWeather{ [weak self] weather in
            self?.presenter?.didLoad(weather: weather)
            self?.temperature = weather
        }
    }
}
