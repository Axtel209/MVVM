//
//  ViewController.swift
//  MVVM
//
//  Created by Giorgio Doganiero on 10/5/19.
//  Copyright © 2019 GiorgioDoganiero. All rights reserved.
//

import UIKit

class HomeViewController: MVVMViewController<HomeViewModel> {
    // MARK: - Properties
    private let homeView = HomeView()
    
    // MARK: - Lifecycle
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView.helloWorldLabel.text = viewModel.model.title
        homeView.pressMeButtonAction(self, action: #selector(toggleHelloWorld))
    }
    
    // MARK: - Actions
    @objc func toggleHelloWorld() {
        UIView.animate(withDuration: 0.4) { [unowned self] in
            let alpha: CGFloat = self.homeView.helloWorldLabel.alpha == 1.0 ? 0.0 : 1.0
            self.homeView.helloWorldLabel.alpha = alpha
        }
    }
}
