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
    private var addSquareButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "StarPlusWhite"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.backgroundColor = .black
        button.layer.cornerRadius = 15
        return button
    }()
    
    private var infoButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: ""), for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 15
        return button
    }()
     
    private var pagingScrollView: UIScrollView = {
        let scrollV = UIScrollView()
        scrollV.backgroundColor = .red
        scrollV.isPagingEnabled = true
        return scrollV
    }()
     
     
    //MARK: - Lifecycle
    override func viewDidLoad() {
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        setupUI()
        
        
        addSquareButton.addTarget(self, action: #selector(addSquareButtonTapped), for: .touchUpInside)
    }
     
     
     
    //MARK: - SetupUI()
    private func setupUI() {
        view.addSubview(logoView)
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(addSquareButton)
        addSquareButton.translatesAutoresizingMaskIntoConstraints = false
        
//        view.addSubview(infoButton)
//        infoButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(pagingScrollView)
        pagingScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 5),
            logoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            logoView.heightAnchor.constraint(equalToConstant: 150),
            logoView.widthAnchor.constraint(equalToConstant: 150),
            
            addSquareButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            addSquareButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            addSquareButton.heightAnchor.constraint(equalToConstant: 45),
            addSquareButton.widthAnchor.constraint(equalToConstant: 45),
            
            pagingScrollView.topAnchor.constraint(equalTo: addSquareButton.bottomAnchor, constant: 10),
            pagingScrollView.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: 10),
            pagingScrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            pagingScrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            pagingScrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
    }
    
    
    @objc private func addSquareButtonTapped(_ selector: UIButton) {
        
    }
}
