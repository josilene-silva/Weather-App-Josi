//
//  ViewController.swift
//  Weather App Josi
//
//  Created by Josilene Silva on 20/11/23.
//

import UIKit

class ViewController: UIViewController {
    private lazy var customView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    //private let customView = UIView(frame: .zero)
    
    // executado quando a View é carregada (uma vez)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        // colore a View principal
        view.backgroundColor = UIColor.red
                       
        setHierarchy()
        setConstraitns()
    }
    
    private func setHierarchy() {
        view.addSubview(customView)
    }
    
    private func setConstraitns() {
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo:
                view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
        ])
    }

}

