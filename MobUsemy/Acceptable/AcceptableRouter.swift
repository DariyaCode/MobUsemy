//
//  AcceptableRouter.swift
//  MobUsemy
//
//  Created by Dariya Gecher on 08.02.2023.
//

import Foundation

protocol AcceptableRouterProtocol: AnyObject{
    func openImage(for temperature: Int)
    
}

class AcceptableRouter: AcceptableRouterProtocol {
    weak var viewController: ViewController?
    
    func openImage(for temperature: Int) {
        let vc = ImageViewerModuleBuilder.build(temperature: temperature)
        viewController?.present(vc, animated: true, completion: nil)
    }
    
}
