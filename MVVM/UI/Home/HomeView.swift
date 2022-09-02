//
//  HomeView.swift
//  MVVM
//
//  Created by Giorgio Doganiero on 10/5/19.
//  Copyright © 2019 GiorgioDoganiero. All rights reserved.
//

import UIKit

class HomeView: UIView {
    // MARK: - Views
    private var pressMeButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        button.setTitle("Press Me", for: .normal)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private(set) var helloWorldLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24, weight: .heavy)
        label.alpha = 0.0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Accessors
    
    func pressMeButtonAction(_ target: Any, action: Selector) {
        pressMeButton.addTarget(target, action: action, for: .touchUpInside)
    }

    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    fileprivate func setupViews() {
        addSubview(pressMeButton)
        addSubview(helloWorldLabel)
        setupLayout()
    }
    
    fileprivate func setupLayout() {
        NSLayoutConstraint.activate([
            pressMeButton.heightAnchor.constraint(equalToConstant: 55),
            pressMeButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 40),
            pressMeButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            pressMeButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40),

            helloWorldLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            helloWorldLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            helloWorldLabel.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor),
            helloWorldLabel.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
        ])
    }
}
