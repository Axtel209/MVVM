//
//  ViewController.swift
//  MVVM
//
//  Created by Giorgio Doganiero on 10/5/19.
//  Copyright © 2019 GiorgioDoganiero. All rights reserved.
//

import UIKit

class HomeViewController: MVVMViewController<HomeViewModel, HomeView> {

    // MARK: - Lifecycle
    required init(viewModel: ViewModel) {
        super.init(viewModel: viewModel)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

