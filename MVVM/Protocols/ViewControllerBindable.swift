//
//  ViewControllerBindable.swift
//  MVVM
//
//  Created by Giorgio Doganiero on 10/5/19.
//  Copyright © 2019 GiorgioDoganiero. All rights reserved.
//

import Foundation

/// Binds the view model and viwe to the respective view controller
protocol ViewControllerBindable {
    associatedtype ViewModel
    associatedtype CustomView

    var viewModel: ViewModel { get }
    var customView: CustomView { get }
}
