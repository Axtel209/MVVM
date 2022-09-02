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
    }
}
