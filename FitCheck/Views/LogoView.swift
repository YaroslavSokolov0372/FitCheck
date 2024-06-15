//
//  LogoView.swift
//  FitCheck
//
//  Created by Yaroslav Sokolov on 10/05/2024.
//

import UIKit

class LogoView: UIView {
    
    //MARK: - Variable
    private let logoImage: UIImageView = {
        let view = UIImageView()
        let im = UIImage(named: "Logo")
        
        view.image = im
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Setup UI
    private func setupUI() {
        self.addSubview(logoImage)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            logoImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            logoImage.topAnchor.constraint(equalTo: self.topAnchor),
            logoImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}
