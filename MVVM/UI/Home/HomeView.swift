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
    private(set) var pressMeButton: UIButton = {
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

    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Add Views
extension HomeView {
    /// This method is called to setup the view.
    fileprivate func setupViews() {
        addSubview(pressMeButton)
        addSubview(helloWorldLabel)
        setupLayout()
    }
}

// MARK: - Layout Views
extension HomeView {
    /// This method is called to add coonstraints to all the subviews of the view.
    fileprivate func setupLayout() {
        pressMeButton.heightAnchor.constraint(equalToConstant: 55).isActive                                          = true
        pressMeButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive    = true
        pressMeButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive     = true
        pressMeButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40).isActive = true

        helloWorldLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive              = true
        helloWorldLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive              = true
        helloWorldLabel.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor).isActive = true
        helloWorldLabel.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor).isActive  = true
    }
}
