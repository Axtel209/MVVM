//
//  HomeView.swift
//  MVVM
//
//  Created by Giorgio Doganiero on 10/5/19.
//  Copyright © 2019 GiorgioDoganiero. All rights reserved.
//

import UIKit

class HomeView: UIView {
    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
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
        backgroundColor = .white
        setupLayout()
    }

}

// MARK: - Layout Views
extension HomeView {

    /// This method is called to add coonstraints to all the subviews of the view.
    fileprivate func setupLayout() {
    }

}
