//
//  ImageViewerViewController.swift
//
//  Created by Dariya Gecher on 09.02.2023
//

import UIKit

protocol ImageViewerViewProtocol: AnyObject {
    func showImage(image: UIImage?)
}

class ImageViewerViewController: UIViewController {
    // MARK: - Public
    @IBOutlet weak var imageView: UIImageView!
    var presenter: ImageViewerPresenterProtocol?

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoaded()
        initialize()
    }
}

// MARK: - Privatze functions
private extension ImageViewerViewController {
    func initialize() {
    }
}

// MARK: - ImageViewerViewProtocol
extension ImageViewerViewController: ImageViewerViewProtocol {
    func showImage(image: UIImage?) {
        DispatchQueue.main.async {
            self.imageView.image = image
        }
    }
    
}
