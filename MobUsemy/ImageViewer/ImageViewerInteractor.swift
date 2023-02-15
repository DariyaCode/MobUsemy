//
//  ImageViewerInteractor.swift
//
//  Created by Dariya Gecher on 09.02.2023
//

protocol ImageViewerInteractorProtocol: AnyObject {
}

class ImageViewerInteractor: ImageViewerInteractorProtocol {
    weak var presenter: ImageViewerPresenterProtocol?
}
