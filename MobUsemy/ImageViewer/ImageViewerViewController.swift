//
//  ImageViewerViewController.swift
//
//  Created by Dariya Gecher on 09.02.2023
//

import UIKit

protocol ImageViewerViewProtocol: AnyObject {
}

class ImageViewerViewController: UIViewController {
    // MARK: - Public
    var presenter: ImageViewerPresenterProtocol?

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
}

// MARK: - Private functions
private extension ImageViewerViewController {
    func initialize() {
    }
}

// MARK: - ImageViewerViewProtocol
extension ImageViewerViewController: ImageViewerViewProtocol {
}
