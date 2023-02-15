//
//  AcceptableModuleBuilder.swift
//  MobUsemy
//
//  Created by Dariya Gecher on 08.02.2023.
//

import UIKit

class AcceptableModuleBuilder{
    static func build() -> ViewController{
        let interactor = AcceptableInteractor()
        let router = AcceptableRouter()
        let presenter = AcceptablePresenter(interactor: interactor, router: router)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "Main") as! ViewController
        viewController.presenter = presenter
        presenter.view = viewController
        interactor.presenter = presenter
        router.viewController = viewController
        return viewController
    }
}
