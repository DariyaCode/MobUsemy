//
//  ImageViewerModuleBuilder.swift
//
//  Created by Dariya Gecher on 09.02.2023
//

import UIKit

class ImageViewerModuleBuilder {
    static func build(temperature: Int) -> ImageViewerViewController {
        let interactor = ImageViewerInteractor(temperature: temperature)
        let router = ImageViewerRouter()
        let presenter = ImageViewerPresenter(interactor: interactor, router: router)
        let storyboard = UIStoryboard(name: "ImageViewer", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ImageViewer") as! ImageViewerViewController
        presenter.view  = viewController
        viewController.presenter = presenter
        interactor.presenter = presenter
        router.viewController = viewController
        return viewController
    }
}
