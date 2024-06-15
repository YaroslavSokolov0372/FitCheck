//
//  MainController.swift
//  FitCheck
//
//  Created by Yaroslav Sokolov on 10/05/2024.
//

import UIKit

class MainController: UIViewController {
    
    
    //MARK: - Variables
    private var logoView = LogoView()
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        setupUI()
    }
    
    
    
    //MARK: - SetupUI()
    private func setupUI() {
        view.addSubview(logoView)
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            logoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            logoView.heightAnchor.constraint(equalToConstant: 100),
            logoView.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
    
}
