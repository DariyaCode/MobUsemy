//
//  AcceptablePresenter.swift
//  MobUsemy
//
//  Created by Dariya Gecher on 08.02.2023.
//

import Foundation

protocol AcceptablePresenterProtocol: AnyObject{
    func viewDidLoaded()
    func didLoad(date: String?)
    func didLoad(weather: Int?)
}

class AcceptablePresenter{
    weak var view: AcceptableViewProtocol?
    let router: AcceptableRouterProtocol
    let interactor: AcceptableInteractorProtocol
    
    init(interactor: AcceptableInteractorProtocol, router: AcceptableRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

extension AcceptablePresenter: AcceptablePresenterProtocol{
    func viewDidLoaded(){
        interactor.loadDate()
        interactor.loadWeather()
    }
    func didLoad(date: String?){
        view?.showDate(date: date ?? "No date in the app!")
    }
    func didLoad(weather: Int?){
        let temperature = weather?.description ?? "No temperature!"
        view?.showWeather(weather: temperature)
    }
}
