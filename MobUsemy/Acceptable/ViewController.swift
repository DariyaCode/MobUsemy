//
//  ViewController.swift
//  MobUsemy
//
//  Created by Dariya Gecher on 08.02.2023.
//

import UIKit

protocol AcceptableViewProtocol: AnyObject {
    func showDate(date: String)
    func showWeather(weather: String)
}

class ViewController: UIViewController {
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var weatherLabel: UILabel!
    
    
    var presenter: AcceptablePresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoaded()
    }
    
    @IBAction func didTapImageButton(_ sender: Any) {
        presenter?.didTapImageButton()
    }
    
    
}

extension ViewController: AcceptableViewProtocol{
    func showDate(date: String) {
        DispatchQueue.main.async {
            self.dateLabel.text = date
        }
    }
    
    func showWeather(weather: String) {
        DispatchQueue.main.async {
            self.weatherLabel.text = weather
        }
    }
}
