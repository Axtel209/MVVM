//
//  MVVMViewController.swift
//  MVVM
//
//  Created by Giorgio Doganiero on 10/5/19.
//  Copyright © 2019 GiorgioDoganiero. All rights reserved.
//

import UIKit

class MVVMViewController<VM>: UIViewController, ViewControllerBindable {
    // MARK: - Properties
    var viewModel: VM

    // MARK: - Lifecycle
    override func loadView() { }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Initializers
    required init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder, viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
